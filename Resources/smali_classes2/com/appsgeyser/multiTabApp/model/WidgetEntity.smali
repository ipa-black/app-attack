.class public Lcom/appsgeyser/multiTabApp/model/WidgetEntity;
.super Ljava/lang/Object;
.source "WidgetEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;,
        Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;
    }
.end annotation


# instance fields
.field private _height:I

.field private _id:Ljava/lang/String;

.field private _injectJS:Ljava/lang/String;

.field private _injectScripts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;",
            ">;"
        }
    .end annotation
.end field

.field private _link:Ljava/lang/String;

.field private _loadingCurtainType:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

.field private _name:Ljava/lang/String;

.field private _showAsTab:Z

.field private _tabIcon:Ljava/lang/String;

.field private _tabId:Ljava/lang/String;

.field private _tabName:Ljava/lang/String;

.field private _tabType:Ljava/lang/String;

.field private _updateTime:I

.field private _userAgent:Ljava/lang/String;

.field private _width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_width:I

    .line 23
    iput v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_height:I

    .line 24
    iput v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_updateTime:I

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_showAsTab:Z

    return-void
.end method

.method public constructor <init>(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_width:I

    .line 23
    iput v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_height:I

    .line 24
    iput v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_updateTime:I

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_showAsTab:Z

    .line 54
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_id:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_name:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_link:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_width:I

    .line 58
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_height:I

    .line 59
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getUpdateTime()I

    move-result v0

    iput v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_updateTime:I

    .line 60
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getInjectJS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_injectJS:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLoadingCurtainType()Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_loadingCurtainType:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    .line 64
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_userAgent:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->isShowAsTab()Z

    move-result p1

    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_showAsTab:Z

    return-void
.end method

.method public static createDefaultWidget(Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;
    .locals 3

    .line 91
    new-instance v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-direct {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;-><init>()V

    .line 92
    sget-object v1, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$1;->$SwitchMap$com$appsgeyser$multiTabApp$model$WidgetEntity$DefaultWidgetType:[I

    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_0
    const-string p0, "pausedwidget_0"

    iput-object p0, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_id:Ljava/lang/String;

    .line 95
    const-string p0, "PausedWidget"

    iput-object p0, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_name:Ljava/lang/String;

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 97
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getWidgetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_link:Ljava/lang/String;

    const/16 p0, 0x12c

    .line 98
    iput p0, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_width:I

    .line 99
    iput p0, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_height:I

    const/4 p0, 0x0

    .line 100
    iput p0, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_updateTime:I

    .line 101
    const-string p0, ""

    iput-object p0, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabName:Ljava/lang/String;

    .line 102
    iput-object p0, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    .line 103
    iput-object p0, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_injectJS:Ljava/lang/String;

    .line 104
    sget-object v1, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->NONE:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_loadingCurtainType:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    .line 105
    iput-object p0, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_userAgent:Ljava/lang/String;

    .line 106
    const-string p0, "-1"

    iput-object p0, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabId:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static newInstance(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;
    .locals 2

    .line 75
    new-instance v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-direct {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_id:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_name:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_link:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_width:I

    .line 80
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_height:I

    .line 81
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getUpdateTime()I

    move-result v1

    iput v1, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_updateTime:I

    .line 82
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabName:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getInjectJS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_injectJS:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLoadingCurtainType()Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    move-result-object v1

    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_loadingCurtainType:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    .line 86
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getUserAgent()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_userAgent:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addScript(Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_injectScripts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_injectScripts:Ljava/util/ArrayList;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_injectScripts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_height:I

    return v0
.end method

.method public getHostFromLink()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_link:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getInjectJS()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_injectJS:Ljava/lang/String;

    return-object v0
.end method

.method public getInjectScripts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_injectScripts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_link:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadingCurtainType()Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_loadingCurtainType:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPathFromLink()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_link:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIcon()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getTabId()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabId:Ljava/lang/String;

    return-object v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabName:Ljava/lang/String;

    return-object v0
.end method

.method public getTabType()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabType:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_updateTime:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_width:I

    return v0
.end method

.method public isShowAsTab()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_showAsTab:Z

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_height:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_id:Ljava/lang/String;

    return-void
.end method

.method public setInjectJS(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_injectJS:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_link:Ljava/lang/String;

    return-void
.end method

.method public setLoadingCurtainType(Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_loadingCurtainType:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_name:Ljava/lang/String;

    return-void
.end method

.method public setShowAsTab(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_showAsTab:Z

    return-void
.end method

.method public setTabIcon(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    return-void
.end method

.method public setTabId(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabId:Ljava/lang/String;

    return-void
.end method

.method public setTabName(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabName:Ljava/lang/String;

    return-void
.end method

.method public setTabType(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabType:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_updateTime:I

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_userAgent:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_width:I

    return-void
.end method
