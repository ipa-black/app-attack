.class Lcom/appsgeyser/sdk/BrowserActivity$3;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/BrowserActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 230
    iput-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity$3;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 236
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 237
    iget-object p3, p0, Lcom/appsgeyser/sdk/BrowserActivity$3;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-virtual {p3}, Lcom/appsgeyser/sdk/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const/4 p4, 0x0

    .line 238
    invoke-virtual {p3, p2, p4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 241
    iget-object p3, p0, Lcom/appsgeyser/sdk/BrowserActivity$3;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-virtual {p3, p2}, Lcom/appsgeyser/sdk/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 242
    const-string p2, "click_finish_download"

    goto :goto_0

    .line 240
    :cond_0
    const-string p2, "click_can_not_start_download"

    .line 244
    :goto_0
    iget-object p3, p0, Lcom/appsgeyser/sdk/BrowserActivity$3;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {p3}, Lcom/appsgeyser/sdk/BrowserActivity;->access$000(Lcom/appsgeyser/sdk/BrowserActivity;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 245
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 246
    const-string p4, "url"

    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object p4, p0, Lcom/appsgeyser/sdk/BrowserActivity$3;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    const/4 p5, 0x1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method
