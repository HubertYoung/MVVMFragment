package ${packageName}.vm;

import android.app.Application;
import com.hubertyoung.common.base.AbsViewModel;
import com.hubertyoung.common.baserx.RxSubscriber;
import androidx.annotation.NonNull;
import ${packageName}.source.${shortName}Repository;

/**
* desc:
* @author:HubertYoung
* @date ${.now?string("yyyy/MM/dd HH:mm")}
* @since:
* @see ${packageName}.fragment.${fragmentClass}
*/
class ${viewmodelName}(@NonNull application: Application) : AbsViewModel< ${shortName}Repository >(application)  {

    fun requestHttp() {
        addDisposable( mRepository.requestHttp( )
            .subscribeWith(object : RxSubscriber< Any >() {

                protected fun showLoading() {
                    showDialogLoading( "" );
                }

                protected fun finishLoading() {
                    stopLoading();
                }

                protected fun onSuccess( a Any ) {
                //sendData( DynamicConstants.EVENT_KEY_DYNAMIC_ALL_CHANNEL, user );
                }

                protected fun onFailure(msg : String  ) {
                    ToastUtil.showError( msg );
                }
            } )
        );
    }
}