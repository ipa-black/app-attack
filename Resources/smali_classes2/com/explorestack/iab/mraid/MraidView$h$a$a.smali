.class public Lcom/explorestack/iab/mraid/MraidView$h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView$h$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/mraid/MraidView$h$a;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/mraid/MraidView$h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$h$a$a;->a:Lcom/explorestack/iab/mraid/MraidView$h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$h$a$a;->a:Lcom/explorestack/iab/mraid/MraidView$h$a;

    iget-object v0, v0, Lcom/explorestack/iab/mraid/MraidView$h$a;->b:Lcom/explorestack/iab/mraid/MraidView$h;

    iget-object v0, v0, Lcom/explorestack/iab/mraid/MraidView$h;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->r(Lcom/explorestack/iab/mraid/MraidView;)V

    return-void
.end method
