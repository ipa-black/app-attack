.class Lcom/appsgeyser/sdk/BrowserActivity$8;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/BrowserActivity;->initButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/BrowserActivity;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity$8;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 322
    iget-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity$8;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {p1}, Lcom/appsgeyser/sdk/BrowserActivity;->access$900(Lcom/appsgeyser/sdk/BrowserActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return-void
.end method
