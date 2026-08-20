.class public Lcom/appsgeyser/multiTabApp/ui/views/WebContent;
.super Lcom/appsgeyser/multiTabApp/ui/views/TabContent;
.source "WebContent.java"


# instance fields
.field private _browser:Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;

.field private _defaultUrl:Ljava/lang/String;

.field private _navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

.field private _progressBar:Landroid/widget/ProgressBar;

.field private _tabContentController:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

.field private _tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

.field private pageRefreshJsCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_tabContentController:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    .line 28
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_browser:Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;

    .line 30
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_progressBar:Landroid/widget/ProgressBar;

    .line 31
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    .line 32
    const-string p1, ""

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->pageRefreshJsCode:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_defaultUrl:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_tabContentController:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    .line 28
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_browser:Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;

    .line 30
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_progressBar:Landroid/widget/ProgressBar;

    .line 31
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    .line 32
    const-string p1, ""

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->pageRefreshJsCode:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_defaultUrl:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    return-void
.end method


# virtual methods
.method public getBrowser()Landroid/webkit/WebView;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_browser:Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;

    return-object v0
.end method

.method public getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    return-object v0
.end method

.method public getPageRefreshJsCode()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->pageRefreshJsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public hideProgressBarPanel()V
    .locals 2

    const v0, 0x7f0a0258

    .line 133
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public init(Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;)V
    .locals 5

    .line 56
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_tabContentController:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    const p1, 0x7f0a030f

    .line 57
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_browser:Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;

    const/16 v0, 0x82

    .line 59
    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->requestFocus(I)Z

    .line 60
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_browser:Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->getContentHeight()I

    const p1, 0x7f0a0257

    .line 61
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_progressBar:Landroid/widget/ProgressBar;

    .line 64
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_tabContentController:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getUrlOverlayState()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_tabContentController:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    invoke-interface {v1}, Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getUrlBarMenuButtons()Ljava/util/ArrayList;

    move-result-object v3

    .line 71
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getUrlBarStyle()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;

    move-result-object p1

    sget-object v4, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;->TOP:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;

    if-ne p1, v4, :cond_0

    .line 72
    new-instance p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_browser:Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;

    invoke-direct {p1, p0, v1, v4, v3}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/view/View;Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    .line 73
    check-cast p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->initHistory()V

    goto :goto_0

    .line 75
    :cond_0
    new-instance p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;

    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_browser:Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;

    invoke-direct {p1, p0, v1, v4, v3}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/view/View;Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    .line 76
    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;->attachAutocomplete()V

    .line 78
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED_ON_EXTERNAL_URLS:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-interface {p1, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;->setHideOnInternalUrls(Z)V

    .line 80
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/Factory;->setNavigationWidget(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;)V

    goto :goto_1

    .line 85
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_browser:Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 86
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebContent"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public navigate(Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_browser:Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/ui/views/BrowserWebView;->loadUrl(Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_defaultUrl:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_navigationWidget:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;->setUrl(Ljava/lang/String;)V

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->_progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setLoadingCurtainType(Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;)V
    .locals 2

    .line 142
    sget-object v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->NONE:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    const v1, 0x7f0a01d6

    if-ne p1, v0, :cond_0

    .line 143
    invoke-virtual {p0, v1}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 144
    :cond_0
    sget-object v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->DEFAULT:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    if-ne p1, v0, :cond_1

    .line 145
    invoke-virtual {p0, v1}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPageRefreshJsCode(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->pageRefreshJsCode:Ljava/lang/String;

    return-void
.end method

.method public showNavigationBars()V
    .locals 0

    return-void
.end method

.method public showProgressBarPanel()V
    .locals 2

    const v0, 0x7f0a0258

    .line 138
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/views/WebContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
