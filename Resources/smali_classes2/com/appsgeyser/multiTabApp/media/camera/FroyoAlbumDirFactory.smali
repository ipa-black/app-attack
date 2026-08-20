.class public final Lcom/appsgeyser/multiTabApp/media/camera/FroyoAlbumDirFactory;
.super Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageDirFactory;
.source "FroyoAlbumDirFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageDirFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumStorageDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 12
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
