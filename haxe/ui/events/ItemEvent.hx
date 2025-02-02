package haxe.ui.events;

import haxe.ui.core.Component;

class ItemEvent extends UIEvent {
    public static inline var COMPONENT_EVENT:String = "itemcomponentevent";
    public static inline var COMPONENT_CLICK_EVENT:String = "itemcomponentclickevent";
    public static inline var COMPONENT_CHANGE_EVENT:String = "itemcomponentchangeevent";

    public var source:Component = null;
    public var sourceEvent:UIEvent = null;
    public var itemIndex:Int = -1;

    public override function clone():UIEvent {
        var c:ItemEvent = new ItemEvent(this.type);
        c.source = this.source;
        c.sourceEvent = this.sourceEvent;
        c.itemIndex = this.itemIndex;
        c.type = this.type;
        c.bubble = this.bubble;
        c.target = this.target;
        c.data = this.data;
        c.canceled = this.canceled;
        postClone(c);
        return c;
    }
}