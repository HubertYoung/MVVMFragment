package ${packageName}.fragment;

import android.os.Bundle

import ${superClassFqcn};
<#if generateViewModel>
import ${packageName}.vm.${shortName}ViewModel;
</#if>
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

/**
* desc: ${fragmentClass}
* @author:HubertYoung
* @date: ${.now?string("yyyy/MM/dd HH:mm")}
* @since:
<#if generateViewModel>
* @see ${shortName}ViewModel
</#if>
*/
<#if generateViewModel>
public class ${fragmentClass} extends AbsLifecycleFragment< ${shortName}ViewModel > {
<#else>
public class ${fragmentClass} extends AbsLifecycleFragment{
</#if>

    @Override
    protected void initView( Bundle state ) {
        super.initView( state );
    }

    @Override
    public int getLayoutResource() {
        return R.layout.${layoutName};
    }

    @Override
    protected void initToolBar() {

    }

}

