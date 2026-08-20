.class public Lcom/appsgeyser/multiTabApp/ThemingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ThemingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/appsgeyser/multiTabApp/ThemingActivity;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/ThemingActivity;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/appsgeyser/multiTabApp/ThemingActivity_ViewBinding;-><init>(Lcom/appsgeyser/multiTabApp/ThemingActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/appsgeyser/multiTabApp/ThemingActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ThemingActivity_ViewBinding;->target:Lcom/appsgeyser/multiTabApp/ThemingActivity;

    .line 28
    const-string v0, "field \'presetsRecycler\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a02e4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ThemingActivity;->presetsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    const-string v0, "field \'toolbar\'"

    const-class v1, Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f0a02e5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ThemingActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 32
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120155

    .line 33
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ThemingActivity;->noAvailableVideoString:Ljava/lang/String;

    const v0, 0x7f120157

    .line 34
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ThemingActivity;->noInternetConnectionString:Ljava/lang/String;

    const v0, 0x7f120188

    .line 35
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ThemingActivity;->rewardedVideoThemingString:Ljava/lang/String;

    const v0, 0x104000a

    .line 36
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/appsgeyser/multiTabApp/ThemingActivity;->okString:Ljava/lang/String;

    const/high16 v0, 0x1040000

    .line 37
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/appsgeyser/multiTabApp/ThemingActivity;->cancelString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ThemingActivity_ViewBinding;->target:Lcom/appsgeyser/multiTabApp/ThemingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/ThemingActivity_ViewBinding;->target:Lcom/appsgeyser/multiTabApp/ThemingActivity;

    .line 47
    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/ThemingActivity;->presetsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/ThemingActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
