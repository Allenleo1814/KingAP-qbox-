import{B as $,c as l,o as c,m as x,C as z,E as C,a3 as N,H as M,a4 as f,a5 as R,a6 as B,an as T,n as s,M as r,F as X,z as E,a2 as b,l as I,ao as F,a as L,a7 as O}from"./index-D8HCwQPV.js";import{b as V}from"./url.utils-BHk-itt_.js";import{s as j}from"./index-Bfx_E94B.js";import{s as A,c as U}from"./index-DYfg_i5Y.js";import"./index-CG8GTDOY.js";const W=[{src:"1.jpg"},{src:"2.png"},{src:"3.jpg"},{src:"4.jpg"},{src:"5.jpg"},{src:"6.jpg"},{src:"7.jpg"},{src:"8.jpg"},{src:"9.jpg"},{src:"10.jpg"},{src:"11.jpg"}];var q=`
    .p-skeleton {
        display: block;
        overflow: hidden;
        background: dt('skeleton.background');
        border-radius: dt('skeleton.border.radius');
    }

    .p-skeleton::after {
        content: '';
        animation: p-skeleton-animation 1.2s infinite;
        height: 100%;
        left: 0;
        position: absolute;
        right: 0;
        top: 0;
        transform: translateX(-100%);
        z-index: 1;
        background: linear-gradient(90deg, rgba(255, 255, 255, 0), dt('skeleton.animation.background'), rgba(255, 255, 255, 0));
    }

    [dir='rtl'] .p-skeleton::after {
        animation-name: p-skeleton-animation-rtl;
    }

    .p-skeleton-circle {
        border-radius: 50%;
    }

    .p-skeleton-animation-none::after {
        animation: none;
    }

    @keyframes p-skeleton-animation {
        from {
            transform: translateX(-100%);
        }
        to {
            transform: translateX(100%);
        }
    }

    @keyframes p-skeleton-animation-rtl {
        from {
            transform: translateX(100%);
        }
        to {
            transform: translateX(-100%);
        }
    }
`,H={root:{position:"relative"}},J={root:function(t){var n=t.props;return["p-skeleton p-component",{"p-skeleton-circle":n.shape==="circle","p-skeleton-animation-none":n.animation==="none"}]}},K=$.extend({name:"skeleton",style:q,classes:J,inlineStyles:H}),D={name:"BaseSkeleton",extends:A,props:{shape:{type:String,default:"rectangle"},size:{type:String,default:null},width:{type:String,default:"100%"},height:{type:String,default:"1rem"},borderRadius:{type:String,default:null},animation:{type:String,default:"wave"}},style:K,provide:function(){return{$pcSkeleton:this,$parentInstance:this}}};function g(e){"@babel/helpers - typeof";return g=typeof Symbol=="function"&&typeof Symbol.iterator=="symbol"?function(t){return typeof t}:function(t){return t&&typeof Symbol=="function"&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t},g(e)}function G(e,t,n){return(t=Q(t))in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function Q(e){var t=Y(e,"string");return g(t)=="symbol"?t:t+""}function Y(e,t){if(g(e)!="object"||!e)return e;var n=e[Symbol.toPrimitive];if(n!==void 0){var o=n.call(e,t);if(g(o)!="object")return o;throw new TypeError("@@toPrimitive must return a primitive value.")}return(t==="string"?String:Number)(e)}var a={name:"Skeleton",extends:D,inheritAttrs:!1,computed:{containerStyle:function(){return this.size?{width:this.size,height:this.size,borderRadius:this.borderRadius}:{width:this.width,height:this.height,borderRadius:this.borderRadius}},dataP:function(){return U(G({},this.shape,this.shape))}}},Z=["data-p"];function ee(e,t,n,o,h,m){return c(),l("div",x({class:e.cx("root"),style:[e.sx("root"),m.containerStyle],"aria-hidden":"true"},e.ptmi("root"),{"data-p":m.dataP}),null,16,Z)}a.render=ee;const te={key:0,class:"lscrollbar mb-2 grid auto-rows-[9rem] grid-cols-3 gap-4"},ne={key:1,class:"lscrollbar grid auto-rows-[9rem] grid-cols-3 gap-4 overflow-auto"},re=["onClick"],se={key:0,class:"absolute inset-0 border-4 border-blue-500"},ae={class:"absolute bottom-0 right-0 rounded-tl-lg bg-blue-500 pl-2 pr-1 pt-1"},oe={key:0,class:"flex items-center justify-between gap-2"},ie={key:1,class:"pi pi-check text-xs"},ge=z({__name:"BackgroundTab",props:{metadata:{},changeWindowTitle:{type:Function}},setup(e){const t=e,n=C(),o=N(),h=M(),m=O("settings"),y=f(!0),v=f(!1),_=f([]),i=f();R(async()=>{t.changeWindowTitle(o.t("settings_background_title"));const{data:u}=await B("availableBackgrounds",{},void 0,W);u.value&&(_.value=u.value,y.value=!1)});const k=()=>{v.value||i.value&&S(i.value)},S=u=>{v.value||(i.value||(i.value=n.backgroundImage),i.value===u&&(i.value=void 0),n.changeBackground(u))},P=async()=>{if(v.value||!i.value)return;const{data:u}=await B("saveBackground",{method:"POST",body:JSON.stringify({background:n.backgroundImage})},void 0,{success:!0,error:void 0}),{success:d}=u.value;if(!d){h.show({summary:o.t("settings_background_saving_error_title"),detail:o.t("settings_background_saving_error_description")}),k();return}h.show({summary:o.t("settings_background_saving_success_title"),detail:o.t("settings_background_saving_success_description")}),m.emit("updated"),i.value=void 0};return T(()=>{k()}),(u,d)=>y.value?(c(),l("div",te,[s(r(a),{height:"9rem"}),s(r(a),{height:"9rem"}),s(r(a),{height:"9rem"}),s(r(a),{height:"9rem"}),s(r(a),{height:"9rem"}),s(r(a),{height:"9rem"}),s(r(a),{height:"9rem"}),s(r(a),{height:"9rem"}),s(r(a),{height:"9rem"})])):(c(),l("div",ne,[(c(!0),l(X,null,E(_.value,p=>(c(),l("div",{class:"after:content[''] after:height-[9rem] relative col-span-1 aspect-square overflow-hidden rounded-lg after:relative after:w-full hover:cursor-pointer",key:p.src,onClick:b(w=>S(p.src),["prevent"])},[r(n).backgroundImage===p.src?(c(),l("div",se,[L("div",ae,[i.value?(c(),l("div",oe,[s(r(j),{icon:"pi pi-save",onClick:d[0]||(d[0]=b(w=>P(),["stop"])),size:"small"}),s(r(j),{icon:"pi pi-refresh",onClick:d[1]||(d[1]=b(w=>k(),["stop"])),severity:"secondary",size:"small"})])):(c(),l("i",ie))])])):I("",!0),F(p.src,()=>(c(),l("img",{src:r(V)(p.src),alt:"",class:"h-full w-full object-cover"},null,8,["src"])),d,2)],8,re))),128))]))}});export{ge as default};
