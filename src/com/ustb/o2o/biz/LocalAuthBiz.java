package com.ustb.o2o.biz;

import com.ustb.o2o.entity.LocalAuth;

public interface LocalAuthBiz {
	//实现登陆的业务功能
	LocalAuth findLoginLocalAuth(LocalAuth auth);
	int addLocalAuth(LocalAuth auth);
}
