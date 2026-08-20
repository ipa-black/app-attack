.class public Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "TabsAdapter.java"


# instance fields
.field private _injectionJs:Ljava/lang/String;

.field private _tabFragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;",
            ">;"
        }
    .end annotation
.end field

.field private _widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

.field private shouldAddOfferWall:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 21
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->_tabFragments:Ljava/util/HashMap;

    .line 22
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->_widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    .line 23
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->shouldAddOfferWall:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->shouldAddOfferWall:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->_widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->tabsCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->_widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->tabsCount()I

    move-result v0

    return v0
.end method

.method public getFragmentByPosition(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->_tabFragments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->_tabFragments:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->_widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getTabByPosition(I)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->_injectionJs:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->_tabFragments:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->shouldAddOfferWall:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->_widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->tabsCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 69
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p1

    const v0, 0x7f120127

    .line 71
    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->_widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getTabByPosition(I)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public setInjectionJs(Ljava/lang/String;)V
    .locals 2

    .line 27
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->_injectionJs:Ljava/lang/String;

    .line 28
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->_tabFragments:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->getContentController()Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->getContentController()Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->_injectionJs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->setBannerInjectionJs(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
