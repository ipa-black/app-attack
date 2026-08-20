.class public interface abstract Lcom/appodeal/ads/modules/libs/network/Networking;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/modules/libs/network/Networking$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001Jq\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00040\u0003\"\u0004\u0008\u0000\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2%\u0010\u000b\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\n\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0006\u0012\u0004\u0018\u0001H\u00040\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/libs/network/Networking;",
        "",
        "enqueue",
        "Lkotlin/Result;",
        "Response",
        "method",
        "Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;",
        "url",
        "",
        "body",
        "",
        "parser",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "response",
        "useUniqueRequestId",
        "",
        "enqueue-yxL6bBk",
        "(Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Z)Ljava/lang/Object;",
        "apd_network"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract enqueue-yxL6bBk(Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Z)Ljava/lang/Object;
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
.end method
