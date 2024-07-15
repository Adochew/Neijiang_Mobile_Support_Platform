package csu.edu.platform.service.Impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import csu.edu.platform.entity.*;
import csu.edu.platform.persistence.*;
import csu.edu.platform.service.MapService;
import csu.edu.platform.service.MerchantService;
import csu.edu.platform.vo.MerchantVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service("merchantService")
public class MerchantServiceImpl implements MerchantService {
    @Autowired
    private MerchantInfoMapper merchantInfoMapper;
    @Autowired
    private MerchantCategoryMapper merchantCategoryMapper;
    @Autowired
    private MerchantPromotionMapper merchantPromotionMapper;
    @Autowired
    private MapService mapService;

    public String getImageUrl(Integer merchantId) {
        return merchantInfoMapper.selectById(merchantId).getImageUrl();
    }
    public Boolean setImageUrl(Integer merchantId, String imageUrl) {
        MerchantInfo merchantInfo = merchantInfoMapper.selectById(merchantId);
        merchantInfo.setImageUrl(imageUrl);
        return merchantInfoMapper.updateById(merchantInfo) != 0;
    }
    public List<MerchantCategory> getMerchantCategoryList() {
        return merchantCategoryMapper.selectList(null);
    }
    public Boolean addMerchantCategory(MerchantCategory merchantCategory) {
        return merchantCategoryMapper.insert(merchantCategory) != 0;
    }
    public Boolean updateMerchantCategory(MerchantCategory merchantCategory) {
        return merchantCategoryMapper.updateById(merchantCategory) != 0;
    }
    public Boolean deleteMerchantCategory(Integer categoryId) {
        return merchantCategoryMapper.deleteById(categoryId) != 0;
    }

    public MerchantVO getMerchantVOByMerchantId(Integer merchantId) {
        MerchantInfo merchantInfo = merchantInfoMapper.selectById(merchantId);
        MerchantCategory merchantCategory = merchantCategoryMapper.selectById(merchantInfo.getCategoryId());
        return transferLocation(new MerchantVO(merchantInfo, merchantCategory));
    }
    public MerchantVO getMerchantVOByAccountId(Integer accountId){
        QueryWrapper<MerchantInfo> queryWrapper1 = new QueryWrapper<>();
        queryWrapper1.eq("owner_id", accountId);
        MerchantInfo merchantInfo = merchantInfoMapper.selectOne(queryWrapper1);
        MerchantCategory merchantCategory = merchantCategoryMapper.selectById(merchantInfo.getCategoryId());
        return transferLocation(new MerchantVO(merchantInfo, merchantCategory));
    }
    public List<MerchantVO> getMerchantVOList() {
        List<MerchantInfo> merchantInfoList = merchantInfoMapper.selectList(null);
        List<MerchantVO> merchantVOList = new ArrayList<>();
        for (MerchantInfo merchantInfo : merchantInfoList) {
            QueryWrapper<MerchantCategory> queryWrapper1 = new QueryWrapper<>();
            queryWrapper1.eq("category_id", merchantInfo.getCategoryId());
            MerchantCategory merchantCategory = merchantCategoryMapper.selectOne(queryWrapper1);
            System.out.println(merchantCategory+":"+merchantInfo);
            MerchantVO merchantVO = transferLocation(new MerchantVO(merchantInfo, merchantCategory));
            merchantVOList.add(merchantVO);
        }
        return merchantVOList;
    }
    public List<MerchantVO> getMerchantVOListByCategoryId(Integer categoryId) {
        MerchantCategory merchantCategory = merchantCategoryMapper.selectById(categoryId);
        QueryWrapper<MerchantInfo> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("category_id", categoryId);
        List<MerchantInfo> merchantInfoList = merchantInfoMapper.selectList(queryWrapper);
        List<MerchantVO> merchantVOList = new ArrayList<>();
        for (MerchantInfo merchantInfo : merchantInfoList) {
            MerchantVO merchantVO = transferLocation(new MerchantVO(merchantInfo, merchantCategory));
            merchantVOList.add(merchantVO);
        }
        return merchantVOList;
    }
    public List<MerchantVO> getMerchantVOListByKeyword(String keyword) {
        QueryWrapper<MerchantInfo> queryWrapper = new QueryWrapper<>();
        queryWrapper.like("name", keyword);
        List<MerchantInfo> merchantInfoList = merchantInfoMapper.selectList(queryWrapper);
        List<MerchantVO> merchantVOList = new ArrayList<>();
        for (MerchantInfo merchantInfo : merchantInfoList) {
            QueryWrapper<MerchantCategory> queryWrapper1 = new QueryWrapper<>();
            queryWrapper1.eq("category_id", merchantInfo.getCategoryId());
            MerchantCategory merchantCategory = merchantCategoryMapper.selectOne(queryWrapper1);
            MerchantVO merchantVO = transferLocation(new MerchantVO(merchantInfo, merchantCategory));
            merchantVOList.add(merchantVO);
        }
        return merchantVOList;
    }
    public Boolean addMerchantInfo(MerchantVO merchantVO) {
        return merchantInfoMapper.insert(merchantVO.parseMerchantInfo()) != 0;
    }
    public Boolean updateMerchantInfo(MerchantVO merchantVO) {
        return merchantInfoMapper.updateById(merchantVO.parseMerchantInfo()) != 0;
    }
    public Boolean deleteMerchantInfo(Integer merchantId) {
        return merchantInfoMapper.deleteById(merchantId) != 0;
    }

    public List<MerchantPromotion> getMerchantPromotionListByMerchantId(Integer merchantId) {
        QueryWrapper<MerchantPromotion> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("merchant_id", merchantId);
        return merchantPromotionMapper.selectList(queryWrapper);
    }
    public Boolean addMerchantPromotion(MerchantPromotion merchantPromotion) {
        return merchantPromotionMapper.insert(merchantPromotion) != 0;
    }
    public Boolean updateMerchantPromotion(MerchantPromotion merchantPromotion) {
        return merchantPromotionMapper.updateById(merchantPromotion) != 0;
    }
    public Boolean deleteMerchantPromotion(Integer promotionId) {
        return merchantPromotionMapper.deleteById(promotionId) != 0;
    }
    private MerchantVO transferLocation(MerchantVO merchantVO) {
        String [] address = merchantVO.getAddress().split(",");
        StringBuilder sb = new StringBuilder();
        for (String value :  mapService.getLocationFromCoordinates(address[0], address[1]).values()) {
            sb.append(value);
        }
        merchantVO.setAddress(sb.toString());
        return  merchantVO;
    }
}
