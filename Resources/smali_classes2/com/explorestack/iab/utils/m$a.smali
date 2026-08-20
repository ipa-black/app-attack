.class public Lcom/explorestack/iab/utils/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/utils/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/utils/m;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/utils/m;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/m$a;->a:Lcom/explorestack/iab/utils/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/utils/m$a;->a:Lcom/explorestack/iab/utils/m;

    invoke-static {v0}, Lcom/explorestack/iab/utils/m;->a(Lcom/explorestack/iab/utils/m;)V

    iget-object v0, p0, Lcom/explorestack/iab/utils/m$a;->a:Lcom/explorestack/iab/utils/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/explorestack/iab/utils/m;->a(Lcom/explorestack/iab/utils/m;Z)Z

    return-void
.end method
