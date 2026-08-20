.class public Lcom/appsgeyser/multiTabApp/DownloadsListActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DownloadsListActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)V
    .locals 1

    .line 18
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity_ViewBinding;-><init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity_ViewBinding;->target:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    .line 25
    const-string v0, "field \'toolbar\'"

    const-class v1, Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f0a013b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p1, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity_ViewBinding;->target:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity_ViewBinding;->target:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    .line 35
    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
