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
public class ${viewmodelName} extends AbsViewModel< ${shortName}Repository >  {

    public ${viewmodelName} ( @NonNull Application application ) {
        super( application );
    }

    public void requestHttp() {
        addDisposable( mRepository.requestHttp( )
            .subscribeWith( new RxSubscriber< Object >() {
                @Override
                protected void showLoading() {
                    showDialogLoading( "" );
                }

                @Override
                protected void finishLoading() {
                    stopLoading();
                }

                @Override
                public void onSuccess( Object o ) {
                //sendData( DynamicConstants.EVENT_KEY_DYNAMIC_ALL_CHANNEL, o );
                }

                @Override
                public void onFailure( String msg ) {
                    ToastUtil.showError( msg );
                }
            } )
        );
    }
}