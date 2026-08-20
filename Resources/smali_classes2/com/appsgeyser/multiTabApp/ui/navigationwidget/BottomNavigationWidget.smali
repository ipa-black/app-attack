.class public Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;
.super Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;
.source "BottomNavigationWidget.java"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/view/View;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/Collection<",
            "Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/view/View;Ljava/util/Collection;)V

    .line 39
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p4, 0x7f0a0258

    .line 41
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_progressBarContainer:Landroid/widget/RelativeLayout;

    .line 42
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_defaultUrl:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_browser:Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->createWidgetLayout()V

    .line 46
    new-instance p1, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->suggestionsClient:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

    .line 48
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->suggestionsClient:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

    invoke-virtual {p1, p0}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;->setListener(Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsListener;)V

    const p1, 0x7f0801d5

    .line 50
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->refreshImage:I

    const p1, 0x7f0801b6

    .line 51
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->stopImage:I

    const p1, 0x7f0d00df

    .line 52
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->urlBarButton:I

    const p1, 0x7f0d00e0

    .line 53
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->urlBarCheckBox:I

    const p1, 0x7f0d00de

    .line 54
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->urlBarIcon:I

    .line 59
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a02bb

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->suggestionsView:Landroid/view/ViewGroup;

    .line 60
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a02bc

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->suggestionsViewScroll:Landroid/view/ViewGroup;

    .line 65
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a01e3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->overlay:Landroid/view/ViewGroup;

    .line 67
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a01e4

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->overlayScroll:Landroid/view/ViewGroup;

    .line 70
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0301

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    .line 73
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0277

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->searchBackground:Landroid/widget/LinearLayout;

    .line 75
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a02b5

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->stopRefreshButton:Landroid/widget/ImageButton;

    .line 78
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->searchBackground:Landroid/widget/LinearLayout;

    const p2, 0x7f0a027f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->searchBtn:Landroid/widget/ImageView;

    .line 80
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a00eb

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->clearTextButton:Landroid/widget/ImageButton;

    .line 82
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->clearTextButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$1;

    invoke-direct {p2, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$1;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->urlBarTextChangeListener:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 93
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    new-instance p2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$2;

    invoke-direct {p2, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$2;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;)V

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->initEventHandlers()V

    return-void
.end method


# virtual methods
.method public changeVisibilityAnimated(Z)V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_visible:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_visible:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f010024

    goto :goto_0

    :cond_2
    const v0, 0x7f010025

    .line 181
    :goto_0
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    .line 182
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 181
    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 183
    new-instance v2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$5;

    invoke-direct {v2, p0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$5;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v2, 0x12c

    .line 204
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 205
    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$6;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$6;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;Z)V

    .line 227
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 228
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public createWidgetLayout()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    const-string v1, "layout_inflater"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 109
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v3, 0x7f0d00ab

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 110
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v2, 0x7f0a00c1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->urlBar:Landroidx/appcompat/widget/Toolbar;

    .line 111
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->urlBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->bringToFront()V

    .line 113
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object v1

    sget-object v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->urlBar:Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f0e0005

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 117
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    .line 119
    new-instance v2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$3;

    invoke-direct {v2, p0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$3;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 126
    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$4;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$4;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;)V

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->isAboutDialogEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V

    :cond_0
    const/4 v1, 0x0

    .line 136
    iput v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_defaultTopBrowserMargin:I

    .line 138
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    .line 137
    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_defaultBottomBrowserMargin:I

    .line 141
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->show()V

    return-void
.end method

.method public hide()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_browser:Landroid/view/View;

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    .line 151
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 152
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_progressBarContainer:Landroid/widget/RelativeLayout;

    .line 153
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 154
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 155
    iput-boolean v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_visible:Z

    return-void
.end method

.method public hideAnimated()V
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->changeVisibilityAnimated(Z)V

    return-void
.end method

.method public hideSuggestionsView()V
    .locals 0

    return-void
.end method

.method public onReceiveSuggestions(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public requestSuggestions()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_browser:Landroid/view/View;

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 165
    iget v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_defaultLeftBrowserMargin:I

    iget v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_defaultTopBrowserMargin:I

    iget v3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_defaultRightBrowserMargin:I

    iget v4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_defaultBottomBrowserMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 167
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_progressBarContainer:Landroid/widget/RelativeLayout;

    .line 168
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 169
    iget v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_defaultLeftBrowserMargin:I

    iget v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_defaultTopBrowserMargin:I

    iget v3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_defaultRightBrowserMargin:I

    iget v4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_defaultBottomBrowserMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_visible:Z

    return-void
.end method

.method public showAnimated()V
    .locals 1

    const/4 v0, 0x1

    .line 236
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->changeVisibilityAnimated(Z)V

    return-void
.end method
