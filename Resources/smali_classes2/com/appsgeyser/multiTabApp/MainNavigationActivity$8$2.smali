.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8$2;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8$2;->this$1:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 683
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
