const __vite__mapDeps=(i,m=__vite__mapDeps,d=(m.f||(m.f=["assets/StartMenu-CMp8Ht2M.js","assets/index-D8HCwQPV.js","assets/index-DfsOhq5G.css","assets/ActiveApps-C5JsjiEw.js","assets/TaskbarBlock-DFO6wMCg.js"])))=>i.map(i=>d[i]);
import{B as b,c,o as v,l as g,m as y,q as m,C as h,n as i,M as o,N as l,_ as s}from"./index-D8HCwQPV.js";import{s as _,c as k}from"./index-DYfg_i5Y.js";var z=`
    .p-divider-horizontal {
        display: flex;
        width: 100%;
        position: relative;
        align-items: center;
        margin: dt('divider.horizontal.margin');
        padding: dt('divider.horizontal.padding');
    }

    .p-divider-horizontal:before {
        position: absolute;
        display: block;
        inset-block-start: 50%;
        inset-inline-start: 0;
        width: 100%;
        content: '';
        border-block-start: 1px solid dt('divider.border.color');
    }

    .p-divider-horizontal .p-divider-content {
        padding: dt('divider.horizontal.content.padding');
    }

    .p-divider-vertical {
        min-height: 100%;
        display: flex;
        position: relative;
        justify-content: center;
        margin: dt('divider.vertical.margin');
        padding: dt('divider.vertical.padding');
    }

    .p-divider-vertical:before {
        position: absolute;
        display: block;
        inset-block-start: 0;
        inset-inline-start: 50%;
        height: 100%;
        content: '';
        border-inline-start: 1px solid dt('divider.border.color');
    }

    .p-divider.p-divider-vertical .p-divider-content {
        padding: dt('divider.vertical.content.padding');
    }

    .p-divider-content {
        z-index: 1;
        background: dt('divider.content.background');
        color: dt('divider.content.color');
    }

    .p-divider-solid.p-divider-horizontal:before {
        border-block-start-style: solid;
    }

    .p-divider-solid.p-divider-vertical:before {
        border-inline-start-style: solid;
    }

    .p-divider-dashed.p-divider-horizontal:before {
        border-block-start-style: dashed;
    }

    .p-divider-dashed.p-divider-vertical:before {
        border-inline-start-style: dashed;
    }

    .p-divider-dotted.p-divider-horizontal:before {
        border-block-start-style: dotted;
    }

    .p-divider-dotted.p-divider-vertical:before {
        border-inline-start-style: dotted;
    }

    .p-divider-left:dir(rtl),
    .p-divider-right:dir(rtl) {
        flex-direction: row-reverse;
    }
`,x={root:function(n){var e=n.props;return{justifyContent:e.layout==="horizontal"?e.align==="center"||e.align===null?"center":e.align==="left"?"flex-start":e.align==="right"?"flex-end":null:null,alignItems:e.layout==="vertical"?e.align==="center"||e.align===null?"center":e.align==="top"?"flex-start":e.align==="bottom"?"flex-end":null:null}}},S={root:function(n){var e=n.props;return["p-divider p-component","p-divider-"+e.layout,"p-divider-"+e.type,{"p-divider-left":e.layout==="horizontal"&&(!e.align||e.align==="left")},{"p-divider-center":e.layout==="horizontal"&&e.align==="center"},{"p-divider-right":e.layout==="horizontal"&&e.align==="right"},{"p-divider-top":e.layout==="vertical"&&e.align==="top"},{"p-divider-center":e.layout==="vertical"&&(!e.align||e.align==="center")},{"p-divider-bottom":e.layout==="vertical"&&e.align==="bottom"}]},content:"p-divider-content"},P=b.extend({name:"divider",style:z,classes:S,inlineStyles:x}),$={name:"BaseDivider",extends:_,props:{align:{type:String,default:null},layout:{type:String,default:"horizontal"},type:{type:String,default:"solid"}},style:P,provide:function(){return{$pcDivider:this,$parentInstance:this}}};function d(t){"@babel/helpers - typeof";return d=typeof Symbol=="function"&&typeof Symbol.iterator=="symbol"?function(n){return typeof n}:function(n){return n&&typeof Symbol=="function"&&n.constructor===Symbol&&n!==Symbol.prototype?"symbol":typeof n},d(t)}function p(t,n,e){return(n=E(n))in t?Object.defineProperty(t,n,{value:e,enumerable:!0,configurable:!0,writable:!0}):t[n]=e,t}function E(t){var n=A(t,"string");return d(n)=="symbol"?n:n+""}function A(t,n){if(d(t)!="object"||!t)return t;var e=t[Symbol.toPrimitive];if(e!==void 0){var r=e.call(t,n);if(d(r)!="object")return r;throw new TypeError("@@toPrimitive must return a primitive value.")}return(n==="string"?String:Number)(t)}var u={name:"Divider",extends:$,inheritAttrs:!1,computed:{dataP:function(){return k(p(p(p({},this.align,this.align),this.layout,this.layout),this.type,this.type))}}},D=["aria-orientation","data-p"],w=["data-p"];function B(t,n,e,r,f,a){return v(),c("div",y({class:t.cx("root"),style:t.sx("root"),role:"separator","aria-orientation":t.layout,"data-p":a.dataP},t.ptmi("root")),[t.$slots.default?(v(),c("div",y({key:0,class:t.cx("content"),"data-p":a.dataP},t.ptm("content")),[m(t.$slots,"default")],16,w)):g("",!0)],16,D)}u.render=B;const T={id:"start-menu",class:"fixed inset-x-0 bottom-3 z-50 mx-5 flex h-14 flex-none select-none px-2 before:absolute before:inset-0 before:z-0 before:rounded-lg before:bg-gray-100/50 before:backdrop-blur-sm before:dark:bg-gray-800/50"},I=h({__name:"Taskbar",props:{parent:{}},setup(t){const n=l(()=>s(()=>import("./StartMenu-CMp8Ht2M.js"),__vite__mapDeps([0,1,2]))),e=l(()=>s(()=>import("./ActiveApps-C5JsjiEw.js"),__vite__mapDeps([3,1,2]))),r=l(()=>s(()=>import("./TaskbarBlock-DFO6wMCg.js"),__vite__mapDeps([4,1,2])));return(f,a)=>(v(),c("div",T,[i(o(n),{parent:f.parent},null,8,["parent"]),i(o(u),{layout:"vertical"}),i(o(e)),i(o(u),{layout:"vertical"}),i(o(r))]))}});export{I as default};
