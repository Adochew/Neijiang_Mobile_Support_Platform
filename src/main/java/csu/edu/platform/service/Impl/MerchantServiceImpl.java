package csu.edu.platform.service.Impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import csu.edu.platform.entity.MerchantCategory;
import csu.edu.platform.entity.MerchantInfo;
import csu.edu.platform.entity.MerchantProduct;
import csu.edu.platform.entity.MerchantPromotion;
import csu.edu.platform.persistence.*;
import csu.edu.platform.service.MerchantService;
import csu.edu.platform.vo.MerchantVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("merchantService")
public class MerchantServiceImpl implements MerchantService {
    @Autowired
    private MerchantInfoMapper merchantInfoMapper;
    @Autowired
    private MerchantCategoryMapper merchantCategoryMapper;
    @Autowired
    private MerchantPromotionMapper merchantPromotionMapper;

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
        return new MerchantVO(merchantInfo, merchantCategory);
    }
    public List<MerchantVO> getMerchantVOList() {
        List<MerchantInfo> merchantInfoList = merchantInfoMapper.selectList(null);
        List<MerchantVO> merchantVOList = new ArrayList<>();
        for (MerchantInfo merchantInfo : merchantInfoList) {
            QueryWrapper<MerchantCategory> queryWrapper1 = new QueryWrapper<>();
            queryWrapper1.eq("category_id", merchantInfo.getCategoryId());
            MerchantCategory merchantCategory = merchantCategoryMapper.selectOne(queryWrapper1);
            MerchantVO merchantVO = new MerchantVO(merchantInfo, merchantCategory);
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
            MerchantVO merchantVO = new MerchantVO(merchantInfo, merchantCategory);
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
            MerchantVO merchantVO = new MerchantVO(merchantInfo, merchantCategory);
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
}
