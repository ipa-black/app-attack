.class public abstract Lcom/explorestack/iab/mraid/MraidView$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/mraid/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/mraid/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "l"
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/mraid/MraidView;


# direct methods
.method private constructor <init>(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$l;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/MraidView$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView$l;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "MRAIDView"

    const-string v1, "Callback: onLoaded"

    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$l;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->l(Lcom/explorestack/iab/mraid/MraidView;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Callback: onError ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$l;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/mraid/MraidView;I)V

    return-void
.end method

.method public a(Lcom/explorestack/iab/mraid/c;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Callback: onOrientation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$l;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidView;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$l;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->m(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/h;

    move-result-object v0

    sget-object v1, Lcom/explorestack/iab/mraid/h;->d:Lcom/explorestack/iab/mraid/h;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$l;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/c;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/explorestack/iab/mraid/e;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Callback: onResize ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$l;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/e;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Callback: onOpen ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$l;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "MRAIDView"

    const-string v1, "Callback: onClose"

    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$l;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidView;->f()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Callback: onExpand "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$l;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidView;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$l;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidView;->b(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Callback: playVideo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$l;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->f(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$l;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->f(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$l;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-interface {v0, v1, p1}, Lcom/explorestack/iab/mraid/MraidViewListener;->onPlayVideo(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
