.class public Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ThemingAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;

.field private view7f0a00f8:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;->target:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;

    .line 27
    const-string v0, "field \'presetSelectedRadioButton\'"

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x7f0a00fc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->presetSelectedRadioButton:Landroid/widget/RadioButton;

    .line 28
    const-string v0, "field \'colorAccentImageView\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a00f9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->colorAccentImageView:Landroid/widget/ImageView;

    .line 29
    const-string v0, "field \'colorPrimaryImageView\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a00fa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->colorPrimaryImageView:Landroid/widget/ImageView;

    .line 30
    const-string v0, "field \'colorPrimaryDarkImageView\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a00fb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->colorPrimaryDarkImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a00f8

    .line 31
    const-string v1, "method \'themeSelected\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;->view7f0a00f8:Landroid/view/View;

    .line 33
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding$1;-><init>(Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;->target:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;->target:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;

    .line 48
    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->presetSelectedRadioButton:Landroid/widget/RadioButton;

    .line 49
    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->colorAccentImageView:Landroid/widget/ImageView;

    .line 50
    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->colorPrimaryImageView:Landroid/widget/ImageView;

    .line 51
    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->colorPrimaryDarkImageView:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;->view7f0a00f8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;->view7f0a00f8:Landroid/view/View;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
