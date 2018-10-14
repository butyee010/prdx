/*package com.prdx.web.helper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ktb.anyid.adjust.portal.repo.PortalAdminConfigRepo;
import com.ktb.anyid.adjust.share.entity.PortalAdminConfig;
import com.ktb.anyid.adjust.share.utils.CommonUtil;
import com.ktb.anyid.adjust.share.utils.StringUtil;

@Component
public class PropertyConfigHelper {
	private static ConcurrentMap<String, String[]> configMap = null;

	private static boolean isCheckInstance = false;

	private static String instanceName = "";
	
	private static PortalAdminConfigRepo portalAdminConfigRepo;
	
	@Autowired
	public void initPropertyConfigHelper(PortalAdminConfigRepo portalAdminConfigRepo) {
		PropertyConfigHelper.portalAdminConfigRepo = portalAdminConfigRepo;
	}

	public static void init() {
		if (instanceName != null && !"".equalsIgnoreCase(instanceName.trim())) {
			isCheckInstance = true;
		}
		List<PortalAdminConfig> propertyConfigList;
		try {
			propertyConfigList = portalAdminConfigRepo.getPropertyConfigAll();
			if (!CommonUtil.checkListIsNull(propertyConfigList)) {
				configMap = new ConcurrentHashMap<String, String[]>();
				for (PortalAdminConfig config : propertyConfigList) {
					configMap.put(config.getPamcConfigKey(), StringUtil.getArrayFromFix(config.getPamcConfigValue()));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static String getSpecialConfig(String key) {
		try {
			String result = "";
			PortalAdminConfig portalAdminConfig = portalAdminConfigRepo.findOne(key);
			if (portalAdminConfig != null) {
				result = portalAdminConfig.getPamcConfigValue();
			}
			return result;
		}
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static String getConfigValue(String key) {
		if (configMap == null)
			init();

		if (isCheckInstance) {
			String instanceKey = instanceName + "." + key;

			if (configMap.containsKey(instanceKey)) {
				String[] _valList = configMap.get(instanceKey);
				if (_valList == null || _valList.length == 0) {
					return getConfigNotInstants(key);
				}
				return _valList[0];
			}
		}

		if (configMap.containsKey(key)) {
			String[] _valList = configMap.get(key);
			if (_valList == null || _valList.length == 0) {
				return null;
			}
			return _valList[0];
		}

		return null;
	}

	private static String getConfigNotInstants(String key) {
		if (configMap.containsKey(key)) {
			String[] _valList = configMap.get(key);
			if (_valList == null || _valList.length == 0) {
				return null;
			}
			return _valList[0];
		}
		return null;
	}

	public static String[] getConfigValueArray(String key) {

		if (configMap == null)
			init();

		if (isCheckInstance) {
			String instanceKey = instanceName + "." + key;
			if (configMap.containsKey(instanceKey)) {
				String[] _valList = configMap.get(instanceKey);
				if (_valList == null || _valList.length == 0) {
					return getConfigNotInstantList(key);
				}
				return _valList;
			}
		}

		if (configMap.containsKey(key)) {
			return configMap.get(key);
		}

		return null;
	}
	
	public static List<String> getConfigValueList(String key) {

		if (configMap == null)
			init();

		if (isCheckInstance) {
			String instanceKey = instanceName + "." + key;
			if (configMap.containsKey(instanceKey)) {
				String[] _valList = configMap.get(instanceKey);
				if (_valList == null || _valList.length == 0) {
					return StringUtil.convertArrayToList(getConfigNotInstantList(key));
				}
				return StringUtil.convertArrayToList(_valList);
			}
		}

		if (configMap.containsKey(key)) {
			return StringUtil.convertArrayToList(configMap.get(key));
		}

		return null;
	}

	private static String[] getConfigNotInstantList(String key) {
		if (configMap.containsKey(key)) {
			String[] _valList = configMap.get(key);
			if (_valList == null || _valList.length == 0) {
				return null;
			}
			return _valList;
		}
		return null;
	}

	public static synchronized void clear() {
		configMap = null;
	}

	public static void setConfigValue(String key, String[] value) {
		if (null == configMap) {
			init();
		}
		configMap.remove(key);
		configMap.put(key, value);
	}

	public static Map<String, String[]> getAllConfig() {
		return new HashMap<String, String[]>(configMap);
	}

	public static void deleteConfig(String key) {
		configMap.remove(key);
	}
	
}
*/