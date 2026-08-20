.class Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;
.super Ljava/lang/Object;
.source "DownloadsListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 101
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    .line 102
    new-instance p2, Landroid/content/Intent;

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object p4, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {p4}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-virtual {p5}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getFile_path()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$100(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/high16 p4, 0x10000000

    .line 105
    invoke-virtual {p2, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    new-instance p4, Ljava/io/File;

    iget-object p5, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {p5}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-virtual {p3}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getFile_path()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, ".fileprovider"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5, p4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    const/high16 p4, 0x40000000    # 2.0f

    .line 111
    invoke-virtual {p2, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p4, 0x1

    .line 112
    invoke-virtual {p2, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :try_start_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    const p2, 0x7f120158

    invoke-static {p1, p2, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
