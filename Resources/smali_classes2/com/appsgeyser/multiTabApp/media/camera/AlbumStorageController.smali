.class public Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;
.super Ljava/lang/Object;
.source "AlbumStorageController.java"


# instance fields
.field private _albumName:Ljava/lang/String;

.field private _albumStorageDirFactory:Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageDirFactory;

.field private _currentPhotoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;->_albumStorageDirFactory:Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageDirFactory;

    if-eqz p1, :cond_0

    .line 18
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "album_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;->_albumName:Ljava/lang/String;

    return-void
.end method

.method private createImageFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 40
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMG_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;->getAlbumDir()Ljava/io/File;

    move-result-object v1

    .line 43
    const-string v2, ".jpg"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getAlbumDir()Ljava/io/File;
    .locals 4

    .line 51
    const-string v0, "mounted"

    .line 52
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AlbumStorageController"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;->_albumStorageDirFactory:Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageDirFactory;

    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;->_albumName:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v3}, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageDirFactory;->getAlbumStorageDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    const-string v0, "failed to create directory"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0

    .line 67
    :cond_1
    const-string v0, "External storage is not mounted READ/WRITE."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2
.end method


# virtual methods
.method public getCurrentPhotoPath()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;->_currentPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentPhotoPath(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;->_currentPhotoPath:Ljava/lang/String;

    return-void
.end method

.method public setUpPhotoFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;->createImageFile()Ljava/io/File;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;->_currentPhotoPath:Ljava/lang/String;

    return-object v0
.end method
