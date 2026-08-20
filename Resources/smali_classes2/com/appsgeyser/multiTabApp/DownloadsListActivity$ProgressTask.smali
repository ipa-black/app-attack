.class Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;
.super Ljava/util/TimerTask;
.source "DownloadsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/DownloadsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;


# direct methods
.method private constructor <init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;-><init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 158
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getStatus()Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    move-result-object v0

    sget-object v3, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {v0, v3}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$300(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$300(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 160
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v0, v1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$302(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Ljava/util/Timer;)Ljava/util/Timer;

    return-void

    .line 163
    :cond_1
    invoke-static {}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$400()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-static {v3}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    .line 165
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getStatus()Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    move-result-object v5

    sget-object v6, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    if-eq v5, v6, :cond_2

    goto :goto_2

    .line 168
    :cond_2
    new-instance v5, Landroid/app/DownloadManager$Query;

    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 169
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getId_d()J

    move-result-wide v6

    const/4 v8, 0x1

    new-array v8, v8, [J

    aput-wide v6, v8, v2

    invoke-virtual {v5, v8}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 170
    iget-object v6, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    iget-object v6, v6, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v6, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v5

    .line 171
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 173
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 174
    const-string v6, "bytes_so_far"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 175
    const-string v7, "total_size"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 176
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    mul-int/lit8 v6, v6, 0x64

    .line 177
    div-int/2addr v6, v7

    .line 178
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setProgress(Ljava/lang/Integer;)V

    goto :goto_1

    .line 180
    :cond_3
    sget-object v6, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Fail:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {v4, v6}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setStatus(Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;)V

    .line 181
    sget-object v6, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Fail:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {v6}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setDescription(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setDate(Ljava/lang/Long;)V

    .line 183
    invoke-virtual {v4, v1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setFile_path(Ljava/lang/String;)V

    .line 185
    :goto_1
    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;->this$0:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    new-instance v6, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask$1;

    invoke-direct {v6, p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask$1;-><init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;)V

    invoke-virtual {v4, v6}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 191
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 194
    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
