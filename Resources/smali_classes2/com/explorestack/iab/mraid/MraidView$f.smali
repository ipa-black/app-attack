.class public Lcom/explorestack/iab/mraid/MraidView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/view/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView;-><init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidView$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/mraid/MraidView;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$f;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseClick()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$f;->a:Lcom/explorestack/iab/mraid/MraidView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/mraid/MraidView;I)V

    return-void
.end method

.method public onCountDownFinish()V
    .locals 0

    return-void
.end method
