package csu.edu.platform.service;

import csu.edu.platform.entity.MerchantCategory;
import csu.edu.platform.entity.MerchantPromotion;
import csu.edu.platform.vo.MerchantVO;

import java.util.List;

public interface MerchantService {
    String getImageUrl(Integer merchantId);
    Boolean setImageUrl(Integer merchantId, String imageUrl);

    List<MerchantCategory> getMerchantCategoryList();
    Boolean addMerchantCategory(MerchantCategory merchantCategory);
    Boolean updateMerchantCategory(MerchantCategory merchantCategory);
    Boolean deleteMerchantCategory(Integer categoryId);

    MerchantVO getMerchantVOByMerchantId(Integer merchantId);
    MerchantVO getMerchantVOByAccountId(Integer accountId);
    List<MerchantVO> getMerchantVOList();
    List<MerchantVO> getMerchantVOListByCategoryId(Integer categoryId);
    List<MerchantVO> getMerchantVOListByKeyword(String keyword);
    Boolean addMerchantInfo(MerchantVO merchantVO);
    Boolean updateMerchantInfo(MerchantVO merchantVO);
    Boolean deleteMerchantInfo(Integer merchantId);

    List<MerchantPromotion> getMerchantPromotionListByMerchantId(Integer merchantId);
    Boolean addMerchantPromotion(MerchantPromotion merchantPromotion);
    Boolean updateMerchantPromotion(MerchantPromotion merchantPromotion);
    Boolean deleteMerchantPromotion(Integer promotionId);

}
