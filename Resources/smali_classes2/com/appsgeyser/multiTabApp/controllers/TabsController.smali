.class public Lcom/appsgeyser/multiTabApp/controllers/TabsController;
.super Ljava/lang/Object;
.source "TabsController.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/controllers/INavigationController;


# static fields
.field private static final OFFSCREEN_TABS_LIMIT:I = 0xa


# instance fields
.field private firstBannerWasShown:Z

.field private final onPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

.field private onTabsControllerReadyListener:Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;

.field private selectedPosition:I

.field private tabsAdapter:Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;

.field private viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->selectedPosition:I

    .line 28
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->firstBannerWasShown:Z

    .line 73
    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/TabsController$2;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/controllers/TabsController$2;-><init>(Lcom/appsgeyser/multiTabApp/controllers/TabsController;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/controllers/TabsController;ZLcom/google/android/material/tabs/TabLayout;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->createTabsAdapterAndSetupTagsPanel(ZLcom/google/android/material/tabs/TabLayout;)V

    return-void
.end method

.method static synthetic access$102(Lcom/appsgeyser/multiTabApp/controllers/TabsController;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->selectedPosition:I

    return p1
.end method

.method private createTabsAdapterAndSetupTagsPanel(ZLcom/google/android/material/tabs/TabLayout;)V
    .locals 1

    .line 60
    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;

    invoke-direct {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;-><init>(Z)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->tabsAdapter:Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;

    .line 61
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 62
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->selectedPosition:I

    .line 64
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->onTabsControllerReadyListener:Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 65
    invoke-interface {p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;->tabsControllerReady(Z)V

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 69
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->tabsAdapter:Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->tabsAdapter:Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;

    invoke-virtual {v1, v0}, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->getFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 162
    instance-of v2, v1, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;

    .line 164
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->getContentController()Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->getContentController()Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;->destroy()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public findTabIdToOpenFromDeepLink(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .line 188
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 190
    const-string v1, ""

    .line 191
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getHostFromLink()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getPathFromLink()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v4, :cond_1

    .line 197
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 200
    :cond_1
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public firstBannerWasShown()V
    .locals 1

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->firstBannerWasShown:Z

    return-void
.end method

.method public getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;
    .locals 3

    const/4 v0, 0x0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->tabsAdapter:Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;

    iget v2, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->selectedPosition:I

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->getFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 97
    instance-of v2, v1, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;

    if-nez v2, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    check-cast v1, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->getContentController()Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getSelectedTabId()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->selectedPosition:I

    return v0
.end method

.method public initWithTabs(Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V
    .locals 3

    .line 33
    :try_start_0
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    const v1, 0x7f0a02c0

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    const/16 v2, 0xa

    .line 35
    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->setOffscreenPageLimit(I)V

    const v1, 0x7f0a02c1

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 38
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 40
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->tabsCount()I

    move-result p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    const/16 p1, 0x8

    .line 42
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->createTabsAdapterAndSetupTagsPanel(ZLcom/google/android/material/tabs/TabLayout;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/appsgeyser/multiTabApp/controllers/TabsController$1;

    invoke-direct {v1, p0, v0}, Lcom/appsgeyser/multiTabApp/controllers/TabsController$1;-><init>(Lcom/appsgeyser/multiTabApp/controllers/TabsController;Lcom/google/android/material/tabs/TabLayout;)V

    invoke-static {p1, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->isOfferWallEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initWithTabs Error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isFirstBannerShown()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->firstBannerWasShown:Z

    return v0
.end method

.method public isTabsControllerReady(Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 113
    invoke-interface {p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;->tabsControllerReady(Z)V

    goto :goto_0

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->onTabsControllerReadyListener:Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;

    :goto_0
    return-void
.end method

.method public onBackKeyDown()Z
    .locals 4

    .line 147
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->PDF:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    .line 151
    invoke-virtual {v3}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->onBackKeyDown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onPause()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public setBannerInjectionJs(Ljava/lang/String;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->tabsAdapter:Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->setInjectionJs(Ljava/lang/String;)V

    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->setPagingEnabled(Z)V

    return-void
.end method

.method public setTabsBackgroundColor(I)V
    .locals 2

    .line 105
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    const v1, 0x7f0a02c1

    .line 106
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 107
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public swipeOnPage(IZ)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {v0, p1, p2}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public swipeOnPageByTabId(Ljava/lang/String;)V
    .locals 1

    .line 181
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getWidgetPositionByTabId(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->swipeOnPage(IZ)V

    return-void
.end method
