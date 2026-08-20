.class public Lcom/criteo/publisher/advancednative/l;
.super Ljava/lang/Object;
.source "NativeAdMapper.java"


# instance fields
.field private final a:Lcom/criteo/publisher/advancednative/q;

.field private final b:Lcom/criteo/publisher/advancednative/i;

.field private final c:Lcom/criteo/publisher/advancednative/e;

.field private final d:Lcom/criteo/publisher/advancednative/f;

.field private final e:Lcom/criteo/publisher/advancednative/b;

.field private final f:Lcom/criteo/publisher/advancednative/RendererHelper;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/advancednative/q;Lcom/criteo/publisher/advancednative/i;Lcom/criteo/publisher/advancednative/e;Lcom/criteo/publisher/advancednative/f;Lcom/criteo/publisher/advancednative/b;Lcom/criteo/publisher/advancednative/RendererHelper;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/l;->a:Lcom/criteo/publisher/advancednative/q;

    .line 52
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/l;->b:Lcom/criteo/publisher/advancednative/i;

    .line 53
    iput-object p3, p0, Lcom/criteo/publisher/advancednative/l;->c:Lcom/criteo/publisher/advancednative/e;

    .line 54
    iput-object p4, p0, Lcom/criteo/publisher/advancednative/l;->d:Lcom/criteo/publisher/advancednative/f;

    .line 55
    iput-object p5, p0, Lcom/criteo/publisher/advancednative/l;->e:Lcom/criteo/publisher/advancednative/b;

    .line 56
    iput-object p6, p0, Lcom/criteo/publisher/advancednative/l;->f:Lcom/criteo/publisher/advancednative/RendererHelper;

    return-void
.end method


# virtual methods
.method a(Lcom/criteo/publisher/model/b0/n;Ljava/lang/ref/WeakReference;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)Lcom/criteo/publisher/advancednative/CriteoNativeAd;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/model/b0/n;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;",
            ">;",
            "Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;",
            ")",
            "Lcom/criteo/publisher/advancednative/CriteoNativeAd;"
        }
    .end annotation

    .line 65
    new-instance v3, Lcom/criteo/publisher/advancednative/j;

    .line 66
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->g()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/l;->b:Lcom/criteo/publisher/advancednative/i;

    invoke-direct {v3, v0, p2, v1}, Lcom/criteo/publisher/advancednative/j;-><init>(Ljava/lang/Iterable;Ljava/lang/ref/Reference;Lcom/criteo/publisher/advancednative/i;)V

    .line 70
    new-instance v5, Lcom/criteo/publisher/advancednative/c;

    .line 71
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->n()Lcom/criteo/publisher/model/b0/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/r;->b()Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/l;->d:Lcom/criteo/publisher/advancednative/f;

    invoke-direct {v5, v0, p2, v1}, Lcom/criteo/publisher/advancednative/c;-><init>(Ljava/net/URI;Ljava/lang/ref/Reference;Lcom/criteo/publisher/advancednative/f;)V

    .line 76
    new-instance v6, Lcom/criteo/publisher/advancednative/a;

    .line 77
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->l()Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/l;->d:Lcom/criteo/publisher/advancednative/f;

    invoke-direct {v6, v0, p2, v1}, Lcom/criteo/publisher/advancednative/a;-><init>(Ljava/net/URI;Ljava/lang/ref/Reference;Lcom/criteo/publisher/advancednative/f;)V

    .line 82
    iget-object p2, p0, Lcom/criteo/publisher/advancednative/l;->f:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->n()Lcom/criteo/publisher/model/b0/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/r;->e()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/criteo/publisher/advancednative/RendererHelper;->preloadMedia(Ljava/net/URL;)V

    .line 83
    iget-object p2, p0, Lcom/criteo/publisher/advancednative/l;->f:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->f()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/criteo/publisher/advancednative/RendererHelper;->preloadMedia(Ljava/net/URL;)V

    .line 84
    iget-object p2, p0, Lcom/criteo/publisher/advancednative/l;->f:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->m()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/criteo/publisher/advancednative/RendererHelper;->preloadMedia(Ljava/net/URL;)V

    .line 86
    new-instance p2, Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    iget-object v2, p0, Lcom/criteo/publisher/advancednative/l;->a:Lcom/criteo/publisher/advancednative/q;

    iget-object v4, p0, Lcom/criteo/publisher/advancednative/l;->c:Lcom/criteo/publisher/advancednative/e;

    iget-object v7, p0, Lcom/criteo/publisher/advancednative/l;->e:Lcom/criteo/publisher/advancednative/b;

    iget-object v9, p0, Lcom/criteo/publisher/advancednative/l;->f:Lcom/criteo/publisher/advancednative/RendererHelper;

    move-object v0, p2

    move-object v1, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;-><init>(Lcom/criteo/publisher/model/b0/n;Lcom/criteo/publisher/advancednative/q;Lcom/criteo/publisher/advancednative/j;Lcom/criteo/publisher/advancednative/e;Lcom/criteo/publisher/advancednative/n;Lcom/criteo/publisher/advancednative/n;Lcom/criteo/publisher/advancednative/b;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;Lcom/criteo/publisher/advancednative/RendererHelper;)V

    return-object p2
.end method
