.class public Lio/bidmachine/ImageDataImpl;
.super Ljava/lang/Object;
.source "ImageDataImpl.java"

# interfaces
.implements Lio/bidmachine/ImageData;


# instance fields
.field private image:Landroid/graphics/drawable/Drawable;

.field private localUri:Landroid/net/Uri;

.field private remoteUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lio/bidmachine/ImageDataImpl;->image:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/ImageData;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 31
    invoke-interface {p1}, Lio/bidmachine/ImageData;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ImageDataImpl;->remoteUrl:Ljava/lang/String;

    .line 32
    invoke-interface {p1}, Lio/bidmachine/ImageData;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ImageDataImpl;->image:Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-interface {p1}, Lio/bidmachine/ImageData;->getLocalUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/ImageDataImpl;->localUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/bidmachine/ImageDataImpl;->remoteUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lio/bidmachine/ImageDataImpl;->remoteUrl:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lio/bidmachine/ImageDataImpl;->image:Landroid/graphics/drawable/Drawable;

    .line 73
    iput-object v0, p0, Lio/bidmachine/ImageDataImpl;->localUri:Landroid/net/Uri;

    return-void
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/bidmachine/ImageDataImpl;->image:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLocalUri()Landroid/net/Uri;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/bidmachine/ImageDataImpl;->localUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/bidmachine/ImageDataImpl;->remoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)Lio/bidmachine/ImageDataImpl;
    .locals 0

    .line 55
    iput-object p1, p0, Lio/bidmachine/ImageDataImpl;->image:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setLocalUri(Landroid/net/Uri;)Lio/bidmachine/ImageDataImpl;
    .locals 0

    .line 66
    iput-object p1, p0, Lio/bidmachine/ImageDataImpl;->localUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setRemoteUrl(Ljava/lang/String;)Lio/bidmachine/ImageDataImpl;
    .locals 0

    .line 44
    iput-object p1, p0, Lio/bidmachine/ImageDataImpl;->remoteUrl:Ljava/lang/String;

    return-object p0
.end method
