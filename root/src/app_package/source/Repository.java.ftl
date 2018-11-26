package ${packageName}.source;

import com.hubertyoung.common.CommonApplication;
import com.hubertyoung.common.api.Api;
import com.hubertyoung.common.api.HostType;
import com.hubertyoung.common.base.AbsRepository;
import ${packageName}.BuildConfig;
import com.hubertyoung.common.net.transformer.DefaultTransformer;
import com.hubertyoung.environmentswitcher.EnvironmentSwitcher;
import io.reactivex.Flowable;

/**
* desc:
* @author:HubertYoung
* @date: ${.now?string("yyyy/MM/dd HH:mm")}
* @since:
* @see ${packageName}.vm.${viewmodelName}
*/

public class ${repositoryName} extends AbsRepository {

    public Flowable< Object > requestHttp() {
        return Api.getDefault( HostType.MY_RESULT )//
            .getRetrofitClient()//
            .setBaseUrl( EnvironmentSwitcher.getObjectEnvironment( CommonApplication.getAppContext(), BuildConfig.DEBUG) )//
            .builder( ApiObject.class )//
            .requestHttp( )//
            .compose( new DefaultTransformer() );
    }

}