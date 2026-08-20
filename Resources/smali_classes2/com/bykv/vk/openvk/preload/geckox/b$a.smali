.class public final Lcom/bykv/vk/openvk/preload/geckox/b$a;
.super Ljava/lang/Object;
.source "GeckoConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bykv/vk/openvk/preload/geckox/net/INetWork;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/content/Context;

.field e:Lcom/bykv/vk/openvk/preload/geckox/i/a;

.field f:Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;

.field g:Z

.field h:Lcom/bykv/vk/openvk/preload/geckox/a/a/a;

.field i:Ljava/lang/Long;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/io/File;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/preload/geckox/b$a;->g:Z

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/b$a;->d:Landroid/content/Context;

    return-void
.end method
