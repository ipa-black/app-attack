.class public Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;
.super Landroidx/fragment/app/Fragment;
.source "TabFragment.java"


# static fields
.field private static final ARGUMENT_INJECTION_JS:Ljava/lang/String; = "INJECTION_JS"

.field private static final ARGUMENT_TAB_ID:Ljava/lang/String; = "TAB_ID"

.field private static final ARGUMENT_TAB_TYPE:Ljava/lang/String; = "TAB_TYPE"


# instance fields
.field private _tabContentController:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;
    .locals 3

    .line 21
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;

    invoke-direct {v0}, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;-><init>()V

    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->setRetainInstance(Z)V

    .line 23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 24
    const-string v2, "TAB_ID"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string p0, "INJECTION_JS"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string p0, "TAB_TYPE"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getContentController()Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->_tabContentController:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "TAB_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getWidgetByTabId(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object p1

    .line 36
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/Factory;->getTabContentController(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;)Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->_tabContentController:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    .line 37
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "INJECTION_JS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->_tabContentController:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    check-cast v0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->setBannerInjectionJs(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TAB_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    goto :goto_0

    .line 49
    :cond_0
    sget-object v1, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->PDF:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->PDF:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    goto :goto_0

    :cond_1
    move-object v0, p3

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->_tabContentController:Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    invoke-interface {v1, p1, p2, v0}, Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;->createTabContent(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p3
.end method
