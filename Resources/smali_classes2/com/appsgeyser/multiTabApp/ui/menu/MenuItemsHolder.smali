.class public Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;
.super Ljava/lang/Object;
.source "MenuItemsHolder.java"


# instance fields
.field private _menu:Landroid/view/Menu;

.field private activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field private itemOrderId:I

.field public trigger:Z


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Landroid/view/Menu;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->trigger:Z

    const/16 v0, 0x32

    .line 27
    iput v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->itemOrderId:I

    if-eqz p3, :cond_0

    .line 43
    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_init(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;Landroid/app/Activity;)V

    .line 45
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->trigger:Z

    const/16 v0, 0x32

    .line 27
    iput v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->itemOrderId:I

    .line 32
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationMode()Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 34
    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuGenerator;->newEmptyMenuInstance(Landroid/content/Context;)Landroid/view/Menu;

    move-result-object v1

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    .line 35
    invoke-direct {p0, p1, v0, p2}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_init(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;Landroid/app/Activity;)V

    .line 36
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    :cond_0
    return-void
.end method

.method private _applyItemsVisibility(Landroid/app/Activity;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;)V
    .locals 9

    .line 60
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getUrlOverlayState()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0a0315

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_7

    .line 62
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getUrlBarMenuButtons()Ljava/util/ArrayList;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    .line 64
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->getType()Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->BACK:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {v5, v6}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const v6, 0x7f0a0313

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 67
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 69
    :cond_1
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->getType()Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->FORWARD:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {v5, v6}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 71
    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const v6, 0x7f0a0317

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 72
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 74
    :cond_2
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->getType()Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->REQUEST_DESKTOP:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {v5, v6}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const v6, 0x7f0a031a

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 77
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 79
    :cond_3
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->getType()Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->ADD_TO_HOME:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {v5, v6}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 81
    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const v6, 0x7f0a0312

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 82
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 84
    :cond_4
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->getType()Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->HOME:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {v5, v6}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 86
    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const v6, 0x7f0a0318

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 87
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 89
    :cond_5
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->getType()Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->DOWNLOADS_LIST:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {v5, v6}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 91
    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {v5, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 92
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 94
    :cond_6
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->getType()Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->LINK:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-virtual {v5, v6}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    instance-of v5, v4, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;

    if-eqz v5, :cond_0

    .line 96
    check-cast v4, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;

    .line 97
    new-instance v5, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$1;

    invoke-direct {v5, p0, v4}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$1;-><init>(Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;)V

    .line 108
    iget-object v6, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    iget v8, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->itemOrderId:I

    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v2, v7, v8, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 114
    :cond_7
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;)V

    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->isAboutDialogEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V

    .line 121
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const v0, 0x7f0a0314

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 122
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 123
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getPurchaseController()Lcom/appsgeyser/sdk/inapp/PurchaseController;

    move-result-object v0

    new-instance v4, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$$ExternalSyntheticLambda1;-><init>(Landroid/view/MenuItem;)V

    invoke-virtual {v0, v4}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->subscribeDisableAdsStatus(Lrx/functions/Action1;)V

    .line 136
    sget-object p1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    const v0, 0x7f0a031c

    if-ne p3, p1, :cond_8

    .line 137
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 138
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 140
    :cond_8
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 141
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 144
    :goto_1
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const p3, 0x7f0a0319

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 145
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowRefreshMenuItem()Z

    move-result p3

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 147
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const p3, 0x7f0a0316

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 148
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowExitMenuItem()Z

    move-result p3

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 150
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowShareMenuItem()Z

    move-result p3

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 153
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 155
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowDownloadList()Z

    move-result p3

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 160
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const p3, 0x7f0a031b

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 161
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowSettings()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const p2, 0x7f0a031d

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 165
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private _init(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;Landroid/app/Activity;)V
    .locals 3

    .line 52
    invoke-virtual {p3}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0005

    .line 53
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 54
    invoke-direct {p0, p3, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_applyItemsVisibility(Landroid/app/Activity;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;)V

    return-void
.end method

.method static synthetic lambda$_applyItemsVisibility$1(Lcom/appsgeyser/sdk/inapp/models/statuses/Status;Landroid/view/MenuItem;)V
    .locals 1

    .line 125
    instance-of v0, p0, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    if-eqz v0, :cond_2

    .line 126
    check-cast p0, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    .line 127
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeatureActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeaturePurchased()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 130
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 128
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic lambda$_applyItemsVisibility$2(Landroid/view/MenuItem;Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V
    .locals 2

    .line 124
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$$ExternalSyntheticLambda2;-><init>(Lcom/appsgeyser/sdk/inapp/models/statuses/Status;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getAllItems()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 179
    :goto_0
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 180
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {v2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 182
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0a031a

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 185
    :cond_0
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 188
    new-instance v4, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 189
    invoke-static {v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->getIconResourceIdByItemId(I)I

    move-result v6

    .line 188
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 190
    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v3, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;-><init>(Landroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 188
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    return-object v0
.end method

.method synthetic lambda$_applyItemsVisibility$0$com-appsgeyser-multiTabApp-ui-menu-MenuItemsHolder(Z)V
    .locals 1

    .line 0
    if-nez p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    const v0, 0x7f0a0311

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    .line 117
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public setItemVisible(IZ)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_menu:Landroid/view/Menu;

    return-void
.end method
