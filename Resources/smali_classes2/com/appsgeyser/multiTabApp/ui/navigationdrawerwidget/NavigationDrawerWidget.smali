.class public Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;
.super Ljava/lang/Object;
.source "NavigationDrawerWidget.java"


# static fields
.field private static final NAVIGATION_DRAWER_WIDGET:Ljava/lang/String; = "com.appsgeyser.multiTabApp.ui.navigationdrawerwidget.NavigationDrawerWidget"

.field private static final SLIDER_HANDLE_SHOW_TIME:I = 0x4e20

.field private static final USER_KNOWS_ABOUT_DRAWER_KEY:Ljava/lang/String; = "com.appsgeyser.multiTabApp.ui.navigationdrawerwidget.NavigationDrawerWidget.userKnowsAboutDrawer"


# instance fields
.field private final activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field private final drawerListView:Landroid/widget/ListView;

.field private drawerWidgetModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;",
            ">;"
        }
    .end annotation
.end field

.field private hasOptions:Z

.field private final hasTabs:Z

.field private final navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

.field private final navigationDrawerWidgetSimpleListener:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;

.field private final sliderHandle:Landroid/widget/ImageView;

.field private final sliderHandleAnimation:Landroid/view/animation/Animation;

.field private final sliderHandleHideAnimation:Landroid/view/animation/Animation;

.field private final tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

.field private userKnowsAboutDrawer:Z


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;ZZZ)V
    .locals 9

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    .line 67
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const v1, 0x7f0a0145

    .line 70
    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x7f0a01c7

    .line 72
    invoke-virtual {p1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    const v2, 0x7f0a0295

    .line 74
    invoke-virtual {p1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    const v2, 0x7f010028

    .line 76
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandleAnimation:Landroid/view/animation/Animation;

    const/4 v3, -0x1

    .line 77
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const v2, 0x7f010029

    .line 78
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandleHideAnimation:Landroid/view/animation/Animation;

    if-eqz p2, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->addTabsInListView()V

    .line 84
    :cond_0
    iput-boolean p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->hasTabs:Z

    const/4 p2, 0x0

    if-eqz p3, :cond_2

    .line 88
    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p3

    const-string v2, "com.appsgeyser.multiTabApp.ui.navigationdrawerwidget.NavigationDrawerWidget.userKnowsAboutDrawer"

    invoke-interface {p3, v2, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->userKnowsAboutDrawer:Z

    if-nez p3, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->showSliderHandle()V

    .line 93
    :cond_1
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 94
    new-instance v2, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$1;

    invoke-direct {v2, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$1;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)V

    const-wide/16 v3, 0x4e20

    invoke-virtual {p3, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    if-eqz p4, :cond_3

    .line 103
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->initHeader()V

    const p3, 0x7f0a01db

    .line 105
    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroidx/appcompat/widget/Toolbar;

    .line 107
    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    .line 109
    invoke-virtual {p1, v5}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 111
    new-instance p2, Landroidx/appcompat/app/ActionBarDrawerToggle;

    const v6, 0x7f1200c6

    const v7, 0x7f1200c5

    move-object v2, p2

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    .line 113
    invoke-virtual {v1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 114
    invoke-virtual {p2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 116
    new-instance p2, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;

    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerWidgetModels:Ljava/util/ArrayList;

    invoke-direct {p2, p1, p3}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 119
    invoke-virtual {v8, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    :cond_3
    new-instance p2, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;

    invoke-direct {p2, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)V

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawerWidgetSimpleListener:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;

    .line 124
    invoke-virtual {v1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 126
    new-instance p2, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetClickListener;

    invoke-direct {p2, v0, v1, v8, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetClickListener;-><init>(Lcom/appsgeyser/multiTabApp/controllers/INavigationController;Landroidx/drawerlayout/widget/DrawerLayout;Landroid/widget/ListView;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    .line 130
    invoke-virtual {v8, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)Lcom/appsgeyser/multiTabApp/controllers/INavigationController;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)Landroid/widget/ListView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    return-object p0
.end method

.method private addTabsInListView()V
    .locals 8

    .line 206
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->tabsCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerWidgetModels:Ljava/util/ArrayList;

    .line 209
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->tabsCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 210
    invoke-virtual {v0, v3}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getTabByPosition(I)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v4

    .line 211
    iget-object v5, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerWidgetModels:Ljava/util/ArrayList;

    new-instance v6, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v2, v4}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;-><init>(Landroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$3;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$3;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initHeader()V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00ad

    .line 242
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    .line 243
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a021b

    .line 247
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 248
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const v4, 0x7f12006c

    invoke-virtual {v2, v4}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 252
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->setCircularIconHeader()V

    :cond_0
    return-void
.end method

.method private setCircularIconHeader()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801dc

    .line 225
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 227
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    .line 228
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 230
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const v2, 0x7f0a021a

    .line 231
    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 233
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showSliderHandle()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 259
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public hideMenuItem(J)V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;

    const/4 v1, 0x0

    .line 180
    :goto_0
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 181
    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->getItem(I)Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->getMenuId()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 183
    invoke-virtual {v0, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->remove(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->notifyDataSetChanged()V

    .line 187
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method hideSliderHandle()V
    .locals 3

    .line 263
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->userKnowsAboutDrawer:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->userKnowsAboutDrawer:Z

    .line 265
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.appsgeyser.multiTabApp.ui.navigationdrawerwidget.NavigationDrawerWidget.userKnowsAboutDrawer"

    iget-boolean v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->userKnowsAboutDrawer:Z

    .line 267
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 268
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 271
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandleHideAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$4;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$4;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 287
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandleHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public isOpened()Z
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawerWidgetSimpleListener:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;->isOpened()Z

    move-result v0

    return v0
.end method

.method public open()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    return-void
.end method

.method public remove()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const v1, 0x7f0a01c7

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 293
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 297
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    invoke-interface {v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->setSwipeEnabled(Z)V

    return-void
.end method

.method public setOptions(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;",
            ">;)V"
        }
    .end annotation

    .line 144
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->hasOptions:Z

    if-nez v0, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->initHeader()V

    .line 148
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->hasTabs:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;-><init>(Landroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 150
    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->setDivider(Z)V

    .line 151
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerWidgetModels:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerWidgetModels:Ljava/util/ArrayList;

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerWidgetModels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    new-instance p1, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerWidgetModels:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 161
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    iget-boolean p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->hasTabs:Z

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$2;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$2;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 174
    :cond_1
    iput-boolean v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->hasOptions:Z

    :cond_2
    return-void
.end method

.method public show()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->sliderHandle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 136
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    return-void
.end method

.method public showDisableAdsMenuItem(Landroid/content/Context;)V
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;

    const/4 v1, 0x0

    .line 192
    :goto_0
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->getCount()I

    move-result v2

    const v3, 0x7f1200c1

    if-ge v1, v2, :cond_1

    .line 193
    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->getItem(I)Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_1
    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    const v2, 0x7f0801d7

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v4, 0x7f0a0314

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v4, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;-><init>(Landroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->add(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->notifyDataSetChanged()V

    .line 200
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->drawerListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method
