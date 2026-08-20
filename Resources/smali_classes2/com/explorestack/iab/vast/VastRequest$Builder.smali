.class public Lcom/explorestack/iab/vast/VastRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/VastRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/iab/vast/VastRequest;->addExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/explorestack/iab/vast/VastRequest;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    return-object v0
.end method

.method public forceUseNativeCloseTime(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->a(Lcom/explorestack/iab/vast/VastRequest;Z)Z

    return-object p0
.end method

.method public setAutoClose(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->b(Lcom/explorestack/iab/vast/VastRequest;Z)Z

    return-object p0
.end method

.method public setCacheControl(Lcom/explorestack/iab/CacheControl;)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->a(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/CacheControl;)Lcom/explorestack/iab/CacheControl;

    return-object p0
.end method

.method public setCompanionCloseTime(I)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->a(Lcom/explorestack/iab/vast/VastRequest;F)F

    return-object p0
.end method

.method public setMaxDuration(I)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->a(Lcom/explorestack/iab/vast/VastRequest;I)I

    return-object p0
.end method

.method public setMediaFilePicker(Lcom/explorestack/iab/vast/processor/b;)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/iab/vast/processor/b<",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;)",
            "Lcom/explorestack/iab/vast/VastRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->a(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/b;)Lcom/explorestack/iab/vast/processor/b;

    return-object p0
.end method

.method public setPlaceholderTimeoutSec(F)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->b(Lcom/explorestack/iab/vast/VastRequest;F)F

    return-object p0
.end method

.method public setPreloadCompanion(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->e(Lcom/explorestack/iab/vast/VastRequest;Z)Z

    return-object p0
.end method

.method public setUseScreenSizeForCompanionOrientation(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->d(Lcom/explorestack/iab/vast/VastRequest;Z)Z

    return-object p0
.end method

.method public setUseScreenSizeForVideoOrientation(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->c(Lcom/explorestack/iab/vast/VastRequest;Z)Z

    return-object p0
.end method

.method public setVideoCloseTime(I)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->c(Lcom/explorestack/iab/vast/VastRequest;F)F

    return-object p0
.end method

.method public setXmlUrl(Ljava/lang/String;)Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->a(Lcom/explorestack/iab/vast/VastRequest;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
