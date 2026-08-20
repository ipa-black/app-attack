.class Lcom/criteo/publisher/advancednative/RendererHelper$a;
.super Lcom/criteo/publisher/x;
.source "RendererHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/advancednative/RendererHelper;->preloadMedia(Ljava/net/URL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/net/URL;

.field final synthetic d:Lcom/criteo/publisher/advancednative/RendererHelper;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/advancednative/RendererHelper;Ljava/net/URL;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/RendererHelper$a;->d:Lcom/criteo/publisher/advancednative/RendererHelper;

    iput-object p2, p0, Lcom/criteo/publisher/advancednative/RendererHelper$a;->c:Ljava/net/URL;

    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/RendererHelper$a;->d:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-static {v0}, Lcom/criteo/publisher/advancednative/RendererHelper;->access$000(Lcom/criteo/publisher/advancednative/RendererHelper;)Lcom/criteo/publisher/advancednative/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/advancednative/h;->a()Lcom/criteo/publisher/advancednative/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/RendererHelper$a;->c:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/criteo/publisher/advancednative/ImageLoader;->preload(Ljava/net/URL;)V

    return-void
.end method
