.class Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BottomSheetMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BottomSheetMenuViewHolder"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private tabName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;Landroid/view/View;)V
    .locals 1

    .line 93
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    .line 94
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a00c4

    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x7f0a00c5

    .line 96
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->tabName:Landroid/widget/TextView;

    .line 97
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06004a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method bind(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;Z)V
    .locals 4

    .line 101
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->access$300(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->access$300(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tabIcons/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->getDrawableIconFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 107
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    invoke-static {v2}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->access$300(Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz v0, :cond_1

    .line 111
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    :goto_1
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->tabName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_3

    .line 123
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->tabName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06015c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->tabName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$BottomSheetMenuViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600cb

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    return-void
.end method
