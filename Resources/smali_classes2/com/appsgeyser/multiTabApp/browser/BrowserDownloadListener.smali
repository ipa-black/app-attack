.class public Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;
.super Ljava/lang/Object;
.source "BrowserDownloadListener.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private _webController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->_webController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->addIntoDataBase(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->sendMessageToActivity(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addIntoDataBase(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    const-string v0, "  Error while add string into table downloadsList "

    .line 131
    new-instance v1, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-direct {v1, p1}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 133
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 136
    :try_start_0
    const-string v2, "id_d"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    const-string p3, "name"

    invoke-virtual {v1, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string p3, "status"

    sget-object p4, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {p4}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string p3, "link_d"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string p3, "description"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string p2, "downloadsList"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 143
    :try_start_1
    const-string p3, "Error"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 146
    throw p2
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .locals 8

    .line 96
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p4, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-static {p1, p3, p2, p4}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    .line 99
    invoke-static {p1, p2, p3}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-wide v5, v0

    move-object v7, p2

    .line 100
    invoke-direct/range {v2 .. v7}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->addIntoDataBase(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Ljava/lang/String;JLjava/lang/String;)V

    move-wide v4, v0

    move-object v6, p2

    move-object v7, p1

    .line 101
    invoke-direct/range {v2 .. v7}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->sendMessageToActivity(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 103
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x23

    invoke-static {p4, v1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 105
    new-instance v0, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$3;-><init>(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-virtual {p4, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setPermissionCallback(Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void
.end method

.method private sendMessageToActivity(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    const-string v1, "type"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    new-instance v1, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    const-string p2, "item"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 125
    sget-object p2, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->DOWNLOAD_LIST_MSG:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .line 45
    :try_start_0
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p2

    .line 47
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    if-eqz p5, :cond_0

    .line 49
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    move-object p5, p6

    :goto_0
    if-nez p5, :cond_1

    move-object v4, p4

    goto :goto_1

    :cond_1
    move-object v4, p5

    .line 57
    :goto_1
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object p5

    .line 58
    invoke-virtual {p5}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getDownloadAction()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    move-result-object p5

    .line 61
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->OPEN:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    if-ne p5, v0, :cond_2

    .line 62
    invoke-static {p1, v4, p2}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    .line 63
    :cond_2
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->SAVE:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne p5, v0, :cond_3

    .line 66
    :try_start_1
    invoke-direct {p0, p1, p6, v4, p2}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 68
    :catch_0
    :try_start_2
    invoke-static {p1, v4, p2}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    .line 70
    :cond_3
    sget-object p6, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->DIALOG:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    if-ne p5, p6, :cond_4

    .line 72
    :try_start_3
    new-instance p5, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$1;

    invoke-direct {p5, p0, p1, v4, p2}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$1;-><init>(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    new-instance p6, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$2;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener$2;-><init>(Lcom/appsgeyser/multiTabApp/browser/BrowserDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-static {p2, p5, p6}, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs;->showOpenOrSaveDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 86
    :catch_1
    :try_start_4
    invoke-static {p1, p4, p2}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->fireOpenFileIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onDownloadStart :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ANFE"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method
