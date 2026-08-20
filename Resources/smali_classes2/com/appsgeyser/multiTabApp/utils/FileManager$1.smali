.class Lcom/appsgeyser/multiTabApp/utils/FileManager$1;
.super Ljava/util/ArrayList;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/utils/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    const-string v0, "video/mpeg4"

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v0, "video/mp4"

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v0, "video/3gp"

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v0, "video/3gpp"

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v0, "video/3gpp2"

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v0, "video/webm"

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v0, "video/avi"

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v0, "application/sdp"

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v0, "application/vnd.apple.mpegurl"

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v0, "application/x-mpegurl"

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
