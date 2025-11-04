const __vite__mapDeps=(i,m=__vite__mapDeps,d=(m.f||(m.f=["assets/AppComponent-C-c6hy-S.js","assets/index-D8HCwQPV.js","assets/index-DfsOhq5G.css","assets/url.utils-BHk-itt_.js","assets/index-Bfx_E94B.js","assets/index-DYfg_i5Y.js","assets/index-CG8GTDOY.js","assets/AppViewOverlayComponent-YXldp8WN.js","assets/index-BTKfeqOs.js","assets/index-CXuff9l5.js","assets/index-Ck-syyjV.js","assets/index-BKoussFU.js","assets/index-BiOsJn13.js"])))=>i.map(i=>d[i]);
import{B as S,c as r,o as i,q as C,m as V,C as P,a3 as R,G as T,H as E,a4 as v,i as D,a5 as j,k as $,l as J,a as p,M as o,N as A,n as g,u as x,w as M,F as U,z as W,_ as k,a6 as z}from"./index-D8HCwQPV.js";import{s as B}from"./index-DYfg_i5Y.js";import{s as q}from"./index-DqDoKNvg.js";import"./index-DwKRJ0iz.js";var G=`
    .p-iconfield {
        position: relative;
        display: block;
    }

    .p-inputicon {
        position: absolute;
        top: 50%;
        margin-top: calc(-1 * (dt('icon.size') / 2));
        color: dt('iconfield.icon.color');
        line-height: 1;
        z-index: 1;
    }

    .p-iconfield .p-inputicon:first-child {
        inset-inline-start: dt('form.field.padding.x');
    }

    .p-iconfield .p-inputicon:last-child {
        inset-inline-end: dt('form.field.padding.x');
    }

    .p-iconfield .p-inputtext:not(:first-child),
    .p-iconfield .p-inputwrapper:not(:first-child) .p-inputtext {
        padding-inline-start: calc((dt('form.field.padding.x') * 2) + dt('icon.size'));
    }

    .p-iconfield .p-inputtext:not(:last-child) {
        padding-inline-end: calc((dt('form.field.padding.x') * 2) + dt('icon.size'));
    }

    .p-iconfield:has(.p-inputfield-sm) .p-inputicon {
        font-size: dt('form.field.sm.font.size');
        width: dt('form.field.sm.font.size');
        height: dt('form.field.sm.font.size');
        margin-top: calc(-1 * (dt('form.field.sm.font.size') / 2));
    }

    .p-iconfield:has(.p-inputfield-lg) .p-inputicon {
        font-size: dt('form.field.lg.font.size');
        width: dt('form.field.lg.font.size');
        height: dt('form.field.lg.font.size');
        margin-top: calc(-1 * (dt('form.field.lg.font.size') / 2));
    }
`,H={root:"p-iconfield"},K=S.extend({name:"iconfield",style:G,classes:H}),Q={name:"BaseIconField",extends:B,style:K,provide:function(){return{$pcIconField:this,$parentInstance:this}}},F={name:"IconField",extends:Q,inheritAttrs:!1};function X(n,u,f,t,c,l){return i(),r("div",V({class:n.cx("root")},n.ptmi("root")),[C(n.$slots,"default")],16)}F.render=X;var Y={root:"p-inputicon"},Z=S.extend({name:"inputicon",classes:Y}),ee={name:"BaseInputIcon",extends:B,style:Z,props:{class:null},provide:function(){return{$pcInputIcon:this,$parentInstance:this}}},O={name:"InputIcon",extends:ee,inheritAttrs:!1,computed:{containerClass:function(){return[this.cx("root"),this.class]}}};function te(n,u,f,t,c,l){return i(),r("span",V({class:l.containerClass},n.ptmi("root")),[C(n.$slots,"default")],16)}O.render=te;const ne={class:"relative flex flex-1 select-none flex-col gap-4 bg-gray-100/50 p-4 dark:bg-gray-800/50"},se={class:"flex h-10 items-center justify-between"},oe={class:"text-3xl font-semibold"},ie={key:1,class:"grid flex-1 grid-cols-2 grid-rows-[repeat(3,min-content)_1fr] gap-3 overflow-auto scrollbar-thin scrollbar-track-rounded-[100px] scrollbar-thumb-rounded-[100px] scrollbar-corner-rounded-[100px] dark:scrollbar-track-gray-500/80 dark:scrollbar-thumb-gray-400/80"},ae={key:2,class:"flex flex-1 items-center justify-center"},le={class:"mt-3 text-2xl font-semibold text-gray-800 md:text-3xl dark:text-white"},re={class:"mt-4 text-gray-500 dark:text-gray-400"},fe=P({__name:"AppStoreApp",props:{metadata:{},appReady:{type:Function},changeWindowTitle:{type:Function}},setup(n){const u=A(()=>k(()=>import("./AppComponent-C-c6hy-S.js"),__vite__mapDeps([0,1,2,3,4,5,6]))),f=A(()=>k(()=>import("./AppViewOverlayComponent-YXldp8WN.js"),__vite__mapDeps([7,1,2,3,4,5,6,8,9,10,11,12]))),t=R(),c=T(),l=E(),y=n,m=v(!1),_=v(),N=e=>{_.value=e,m.value=!0},L=()=>{_.value=void 0,m.value=!1},d=v(),I=D(()=>d.value?c.appStoreApplications.filter(e=>{var s;return(s=e.name)==null?void 0:s.toLowerCase().includes(d.value.toLowerCase())}):c.appStoreApplications),w=async e=>{if(e.isInstalled)return;e.isInstalling=!0;const{data:s}=await z("installApp",{method:"POST",body:JSON.stringify({id:e.id})},void 0,{success:!0,error:void 0}),{success:a,error:h}=s.value;if(!a){e.isInstalling=!1,l.show({summary:t.t("app_store_unable_to_install"),detail:h||t.t("app_store_unable_to_install_helptext")});return}},b=async e=>{if(!e.isInstalled)return;e.isInstalling=!0;const{data:s}=await z("uninstallApp",{method:"POST",body:JSON.stringify({id:e.id})},void 0,{success:!0,error:void 0}),{success:a,error:h}=s.value;if(e.isInstalling=!1,!a){l.show({summary:t.t("app_store_unable_to_remove"),detail:h||t.t("app_store_unable_to_remove_helptext")});return}l.show({summary:t.t("app_store_uninstall_success"),detail:t.t("app_store_uninstall_success_helptext")}),c.markAsUninstalled(e.id)};return j(()=>{y.appReady(),y.changeWindowTitle(t.t("app_store_title"))}),(e,s)=>(i(),r("div",ne,[m.value?(i(),$(o(f),{key:0,app:_.value,onClose:L,onInstall:w,onRemove:b},null,8,["app"])):J("",!0),p("div",se,[p("h2",oe,x(o(t).t("app_store_title")),1),g(o(F),null,{default:M(()=>[g(o(O),{class:"pi pi-search"}),g(o(q),{modelValue:d.value,"onUpdate:modelValue":s[0]||(s[0]=a=>d.value=a),placeholder:"Search",type:"text",class:"rounded-full"},null,8,["modelValue"])]),_:1})]),I.value.length>0?(i(),r("div",ie,[(i(!0),r(U,null,W(I.value,a=>(i(),$(o(u),{app:a,onOpenView:N,onInstall:w,onRemove:b},null,8,["app"]))),256))])):(i(),r("div",ae,[p("div",null,[p("h1",le,x(o(t).t("app_store_nothing_here")),1),p("p",re,x(o(t).t("app_store_nothing_here_helptext")),1)])]))]))}});export{fe as default};
