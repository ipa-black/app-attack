.class public Lcom/explorestack/iab/vast/VastRequest$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/VastRequest;->loadVideoWithData(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/explorestack/iab/vast/VastRequestListener;

.field public final synthetic d:Lcom/explorestack/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/VastRequest;Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest$b;->d:Lcom/explorestack/iab/vast/VastRequest;

    iput-object p2, p0, Lcom/explorestack/iab/vast/VastRequest$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/explorestack/iab/vast/VastRequest$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/explorestack/iab/vast/VastRequest$b;->c:Lcom/explorestack/iab/vast/VastRequestListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$b;->d:Lcom/explorestack/iab/vast/VastRequest;

    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/explorestack/iab/vast/VastRequest$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/explorestack/iab/vast/VastRequest$b;->c:Lcom/explorestack/iab/vast/VastRequestListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/explorestack/iab/vast/VastRequest;->loadVideoWithDataSync(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V

    return-void
.end method
