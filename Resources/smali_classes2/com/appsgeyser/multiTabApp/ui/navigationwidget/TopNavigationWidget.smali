.class public Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;
.super Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;
.source "TopNavigationWidget.java"


# instance fields
.field protected _refreshOnclickListener:Landroid/view/View$OnClickListener;


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

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/view/View;Ljava/util/Collection;)V

    .line 371
    new-instance p4, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$10;

    invoke-direct {p4, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$10;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;)V

    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_refreshOnclickListener:Landroid/view/View$OnClickListener;

    .line 91
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p4, 0x7f0a0258

    .line 93
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_progressBarContainer:Landroid/widget/RelativeLayout;

    .line 94
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultUrl:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_browser:Landroid/view/View;

    .line 97
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->createWidgetLayout()V

    .line 98
    new-instance p1, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p2

    .line 99
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsClient:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

    .line 100
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsClient:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;

    invoke-virtual {p1, p0}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;->setListener(Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsListener;)V

    const p1, 0x7f0801d5

    .line 102
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->refreshImage:I

    const p1, 0x7f0801b6

    .line 103
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->stopImage:I

    const p1, 0x7f0d00df

    .line 104
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlBarButton:I

    const p1, 0x7f0d00e0

    .line 105
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlBarCheckBox:I

    const p1, 0x7f0d00de

    .line 106
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlBarIcon:I

    .line 110
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a02bb

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsView:Landroid/view/ViewGroup;

    .line 112
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a02bc

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsViewScroll:Landroid/view/ViewGroup;

    .line 117
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a01e3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->overlay:Landroid/view/ViewGroup;

    .line 119
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a01e4

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->overlayScroll:Landroid/view/ViewGroup;

    .line 122
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0301

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    .line 125
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0277

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->searchBackground:Landroid/widget/LinearLayout;

    .line 127
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a02b5

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->stopRefreshButton:Landroid/widget/ImageButton;

    .line 130
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->searchBackground:Landroid/widget/LinearLayout;

    const p2, 0x7f0a027f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->searchBtn:Landroid/widget/ImageView;

    .line 132
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const p2, 0x7f0a00eb

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->clearTextButton:Landroid/widget/ImageButton;

    .line 134
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->clearTextButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$3;

    invoke-direct {p2, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$3;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlBarTextChangeListener:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    new-instance p2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$4;

    invoke-direct {p2, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$4;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;)V

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->initEventHandlers()V

    return-void
.end method

.method private _getNextSuggestion(Ljava/util/ArrayList;ILjava/util/ArrayList;II)Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;",
            ">;II)",
            "Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;"
        }
    .end annotation

    const/4 v0, 0x2

    if-gt p5, v0, :cond_1

    .line 419
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 421
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    return-object p1

    .line 424
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 425
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    return-object p1

    .line 430
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p2, p5, :cond_2

    .line 432
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    return-object p1

    .line 435
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p4, p1, :cond_3

    .line 436
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Ljava/util/ArrayList;ILjava/util/ArrayList;II)Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_getNextSuggestion(Ljava/util/ArrayList;ILjava/util/ArrayList;II)Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    move-result-object p0

    return-object p0
.end method

.method private getLocalSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_history:Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;->getHistoryItemsGroupedByUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    :cond_0
    const-string v1, "title"

    .line 396
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 395
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 397
    const-string v2, "url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-virtual {p0, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->isHomePageUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 399
    new-instance v3, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;

    invoke-direct {v3, v1, v2}, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 407
    :catch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method


# virtual methods
.method public changeUrlBarRightMarginAnimated(II)V
    .locals 1

    .line 333
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;II)V

    const-wide/16 p1, 0x64

    .line 349
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 350
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public changeVisibilityAnimated(Z)V
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v1, 0x7f0a02f0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_visible:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_visible:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f010026

    goto :goto_0

    :cond_2
    const v0, 0x7f010027

    .line 231
    :goto_0
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    .line 232
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 231
    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 233
    new-instance v2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$7;

    invoke-direct {v2, p0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$7;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v2, 0x12c

    .line 254
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 255
    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 257
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$8;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$8;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Z)V

    .line 277
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 278
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public createWidgetLayout()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    const-string v1, "layout_inflater"

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 161
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v3, 0x7f0d00ac

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 162
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v2, 0x7f0a02f0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlBar:Landroidx/appcompat/widget/Toolbar;

    .line 163
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->bringToFront()V

    .line 164
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlBar:Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f0e0005

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 166
    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$5;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$5;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;)V

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->isAboutDialogEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V

    .line 175
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    .line 177
    new-instance v2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$6;

    invoke-direct {v2, p0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$6;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    .line 186
    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultTopBrowserMargin:I

    const/4 v0, 0x0

    .line 189
    iput v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultBottomBrowserMargin:I

    .line 191
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->show()V

    return-void
.end method

.method protected extendUrlInput()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->searchBackground:Landroid/widget/LinearLayout;

    .line 357
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 358
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->pxToDp(I)I

    move-result v0

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->changeUrlBarRightMarginAnimated(II)V

    return-void
.end method

.method public hide()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v1, 0x7f0a02f0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_browser:Landroid/view/View;

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 202
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_progressBarContainer:Landroid/widget/RelativeLayout;

    .line 203
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 204
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 205
    iput-boolean v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_visible:Z

    return-void
.end method

.method public hideAdditionalMenu()V
    .locals 2

    .line 290
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_menuVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_menuVisible:Z

    .line 295
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->overlay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 296
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 297
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->overlay:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->overlay:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->slideUp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public hideAnimated()V
    .locals 1

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->changeVisibilityAnimated(Z)V

    return-void
.end method

.method public hideSuggestionsView()V
    .locals 2

    .line 66
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$2;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$2;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isMenuVisible()Z
    .locals 1

    .line 381
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_menuVisible:Z

    return v0
.end method

.method public isSuggestionsVisible()Z
    .locals 1

    .line 385
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_suggestionsVisible:Z

    return v0
.end method

.method public declared-synchronized onReceiveSuggestions(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
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

    monitor-enter p0

    .line 448
    :try_start_0
    invoke-direct {p0, p2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->getLocalSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 450
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 452
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    new-instance v2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 453
    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestSuggestions()V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    .line 49
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$1;

    invoke-direct {v2, p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$1;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Ljava/lang/String;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->hideSuggestionsView()V

    :goto_0
    return-void
.end method

.method protected shortenUrlInput()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->searchBackground:Landroid/widget/LinearLayout;

    .line 366
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 367
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->pxToDp(I)I

    move-result v0

    const/16 v1, 0x4b

    invoke-virtual {p0, v0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->changeUrlBarRightMarginAnimated(II)V

    return-void
.end method

.method public show()V
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    const v1, 0x7f0a02f0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_browser:Landroid/view/View;

    .line 214
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 215
    iget v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultLeftBrowserMargin:I

    iget v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultTopBrowserMargin:I

    iget v3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultRightBrowserMargin:I

    iget v4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultBottomBrowserMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 217
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_progressBarContainer:Landroid/widget/RelativeLayout;

    .line 218
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 219
    iget v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultLeftBrowserMargin:I

    iget v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultTopBrowserMargin:I

    iget v3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultRightBrowserMargin:I

    iget v4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultBottomBrowserMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_visible:Z

    return-void
.end method

.method protected showAdditionalMenu()V
    .locals 2

    .line 304
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_menuVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_menuVisible:Z

    .line 310
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->overlayScroll:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->overlay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->overlay:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->slideDown:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 314
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->overlay:Landroid/view/ViewGroup;

    .line 315
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0xc

    .line 316
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 317
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->overlay:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public showAnimated()V
    .locals 1

    const/4 v0, 0x1

    .line 286
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->changeVisibilityAnimated(Z)V

    return-void
.end method

.method protected toggleAdditionalMenu()V
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_menuVisible:Z

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->hideAdditionalMenu()V

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->showAdditionalMenu()V

    :goto_0
    return-void
.end method
