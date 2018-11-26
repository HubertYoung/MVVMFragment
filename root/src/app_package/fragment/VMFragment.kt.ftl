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
class ${fragmentClass} : AbsLifecycleFragment< ${shortName}ViewModel > {
<#else>
class ${fragmentClass} : AbsLifecycleFragment<*>{
</#if>

    override fun initView( state : Bundle ) {
        super.initView( state );
    }

	override fun getLayoutResource(): Int = R.layout.${layoutName}

    override fun initToolBar() {

    }
}
