.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;
.super Ljava/lang/Object;
.source "TopNavigationWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->onReceiveSuggestions(Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$localSuggestions:Ljava/util/ArrayList;

.field final synthetic val$remoteSuggestions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;->val$localSuggestions:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;->val$remoteSuggestions:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 458
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    move v7, v0

    move v8, v7

    move v9, v8

    :goto_0
    const/4 v1, 0x6

    if-ge v7, v1, :cond_3

    .line 465
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;->val$localSuggestions:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;->val$remoteSuggestions:Ljava/util/ArrayList;

    move v3, v8

    move v5, v9

    move v6, v7

    invoke-static/range {v1 .. v6}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->access$000(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Ljava/util/ArrayList;ILjava/util/ArrayList;II)Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 473
    :cond_0
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;->val$context:Landroid/content/Context;

    const-string v3, "layout_inflater"

    .line 474
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0d00c9

    const/4 v4, 0x0

    .line 476
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0a02ba

    .line 479
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a02b9

    .line 481
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 483
    instance-of v5, v1, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;

    if-eqz v5, :cond_1

    add-int/lit8 v8, v8, 0x1

    .line 485
    move-object v5, v1

    check-cast v5, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;

    .line 487
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 488
    invoke-virtual {v5}, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 489
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 491
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    const/16 v12, 0xff

    .line 492
    invoke-static {v0, v0, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 493
    invoke-virtual {v5}, Lcom/appsgeyser/multiTabApp/suggestions/LocalSuggestionItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 494
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v12, 0x12

    .line 493
    invoke-virtual {v10, v11, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 496
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 498
    :cond_1
    instance-of v5, v1, Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;

    if-eqz v5, :cond_2

    add-int/lit8 v9, v9, 0x1

    .line 500
    move-object v5, v1

    check-cast v5, Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;

    .line 501
    invoke-virtual {v5}, Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;->getAutocompleteText()Ljava/lang/String;

    move-result-object v5

    .line 500
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :goto_1
    new-instance v5, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11$1;

    invoke-direct {v5, p0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11$1;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    new-instance v3, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11$2;

    invoke-direct {v3, p0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11$2;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;Lcom/appsgeyser/multiTabApp/suggestions/SuggestionItem;)V

    .line 519
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v1, v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 536
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v1, v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsViewScroll:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 537
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v1, v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->suggestionsView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$11;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_suggestionsVisible:Z

    return-void
.end method
