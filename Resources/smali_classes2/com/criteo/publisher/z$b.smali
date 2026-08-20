.class final Lcom/criteo/publisher/z$b;
.super Lkotlin/jvm/internal/Lambda;
.source "Session.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/z;-><init>(Lcom/criteo/publisher/i;Lcom/criteo/publisher/c0/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/z;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/z;)V
    .locals 0

    iput-object p1, p0, Lcom/criteo/publisher/z$b;->a:Lcom/criteo/publisher/z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/criteo/publisher/z$b;->a:Lcom/criteo/publisher/z;

    invoke-static {v0}, Lcom/criteo/publisher/z;->a(Lcom/criteo/publisher/z;)Lcom/criteo/publisher/c0/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/c0/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/criteo/publisher/z$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
