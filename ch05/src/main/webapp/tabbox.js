var Tabbox = {
    __onTabClicked: function(){
        $(".tab-box li.selected").removeClass("selected");
        $(this).addClass("selected");
    },

    init: function(){
        $(function(){
            $(".tab-box li").click(Tabbox.__onTabClicked);
        });
    }
}

var Tabbox = {
    __onTabClicked: function(){
        $(".tab-box li.selected").removeClass("selected");
        $(this).addClass("selected");
    },
    _init: function(){
        $(".tab-box li").click(Tabbox.__onTabClicked);
    },   
    init: function(){
        $(this._init);
    }
}