.class public final Lcom/appodeal/ads/modules/libs/network/HttpClient$Json;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/modules/libs/network/HttpClient;
.implements Lcom/appodeal/ads/modules/libs/network/Networking;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/modules/libs/network/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Json"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u00012\u00020\u0002Jr\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0011\"\u0004\u0008\u0000\u0010\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082%\u0010\u000e\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u0008\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0006\u0012\u0004\u0018\u00018\u00000\n2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000fH\u0096\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/libs/network/HttpClient$Json;",
        "Lcom/appodeal/ads/modules/libs/network/HttpClient;",
        "Lcom/appodeal/ads/modules/libs/network/Networking;",
        "Response",
        "Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;",
        "method",
        "",
        "url",
        "",
        "body",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "response",
        "parser",
        "",
        "useUniqueRequestId",
        "Lkotlin/Result;",
        "enqueue-yxL6bBk",
        "(Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Z)Ljava/lang/Object;",
        "enqueue",
        "apd_network"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/appodeal/ads/modules/libs/network/HttpClient$Json;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/modules/libs/network/httpclients/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/modules/libs/network/HttpClient$Json;

    invoke-direct {v0}, Lcom/appodeal/ads/modules/libs/network/HttpClient$Json;-><init>()V

    sput-object v0, Lcom/appodeal/ads/modules/libs/network/HttpClient$Json;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/HttpClient$Json;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/appodeal/ads/modules/libs/network/httpclients/b;->a()Lcom/appodeal/ads/modules/libs/network/httpclients/a;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpClient$Json;->a:Lcom/appodeal/ads/modules/libs/network/httpclients/a;

    return-void
.end method


# virtual methods
.method public enqueue-yxL6bBk(Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Z)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Response:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-[B+TResponse;>;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appodeal/ads/modules/libs/network/HttpClient$Json;->a:Lcom/appodeal/ads/modules/libs/network/httpclients/a;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/appodeal/ads/modules/libs/network/httpclients/a;->enqueue-yxL6bBk(Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
