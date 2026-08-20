.class public final Lcom/appsgeyser/multiTabApp/media/camera/BaseAlbumDirFactory;
.super Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageDirFactory;
.source "BaseAlbumDirFactory.java"


# static fields
.field private static final CAMERA_DIR:Ljava/lang/String; = "/dcim/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageDirFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumStorageDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 14
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/dcim/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
