package com.prdx.web.service.impl;
/*package com.ktb.anyid.adjust.portal.service.impl;

import java.math.BigDecimal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ktb.anyid.adjust.portal.log.LogConstants;
import com.ktb.anyid.adjust.portal.log.LogUtil;
import com.ktb.anyid.adjust.portal.log.LogUtilImpl;
import com.ktb.anyid.adjust.portal.repo.AdjustMsgDataRepo;
import com.ktb.anyid.adjust.portal.service.AdjustMsgDataService;
import com.ktb.anyid.adjust.share.entity.AdjustMsgData;

@Service
public class AdjustMsgDataServiceImpl implements AdjustMsgDataService {
	
	private LogUtil logger = LogUtilImpl.getLogger(LogConstants.LOG_ADJUST_MSG_DATA);

	@Autowired
	private AdjustMsgDataRepo adjustMsgDataRepo;
	
	@Override
	public byte[] getMsgData(BigDecimal msgId) throws Exception {
		byte[] content = null;
		try {
			AdjustMsgData adjustMsgData = adjustMsgDataRepo.findOne(msgId);
			if (adjustMsgData != null) {
				content = adjustMsgData.getAjfmMsgData();
			}
		}
		catch (Exception e) {
			logger.error("AdjustMsgDataServiceImpl getMsgData Exception: ", e);
			throw e;
		}
		catch (Throwable e) {
			logger.error("AdjustMsgDataServiceImpl getMsgData Throwable: ", e);
			throw e;
		}
		return content;
	}
	
}
*/