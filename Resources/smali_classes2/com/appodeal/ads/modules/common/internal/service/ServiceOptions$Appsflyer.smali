.class public final Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Appsflyer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u0010\u001a\u00020\u0008\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0017\u0012\u0006\u0010\"\u001a\u00020\u001d\u0012\u0006\u0010&\u001a\u00020#\u0012\u0006\u0010)\u001a\u00020#\u0012\u0006\u0010+\u001a\u00020#\u0012\u0006\u00101\u001a\u00020,\u00a2\u0006\u0004\u00082\u00103R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0010\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\u000f\u0010\u000cR\u0017\u0010\u0016\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0017\u0010\"\u001a\u00020\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u001a\u0010&\u001a\u00020#8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u001a\u0010)\u001a\u00020#8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008(\u0010%\u001a\u0004\u0008)\u0010\'R\u001a\u0010+\u001a\u00020#8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008*\u0010%\u001a\u0004\u0008+\u0010\'R\u001a\u00101\u001a\u00020,8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\u00a8\u00064"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;",
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "context",
        "",
        "b",
        "Ljava/lang/String;",
        "getAppId",
        "()Ljava/lang/String;",
        "appId",
        "c",
        "getDevKey",
        "devKey",
        "Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;",
        "d",
        "Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;",
        "getMode",
        "()Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;",
        "mode",
        "",
        "e",
        "Ljava/util/List;",
        "getConversionKeys",
        "()Ljava/util/List;",
        "conversionKeys",
        "",
        "f",
        "J",
        "getInitializationTimeout",
        "()J",
        "initializationTimeout",
        "",
        "g",
        "Z",
        "isEventTrackingEnabled",
        "()Z",
        "h",
        "isRevenueTrackingEnabled",
        "i",
        "isLoggingEnabled",
        "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;",
        "j",
        "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;",
        "getConnectorCallback",
        "()Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;",
        "connectorCallback",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;Ljava/util/List;JZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V",
        "apd_internal"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:J

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;Ljava/util/List;JZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZZZ",
            "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversionKeys"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectorCallback"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->d:Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    iput-object p5, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->e:Ljava/util/List;

    iput-wide p6, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->f:J

    iput-boolean p8, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->g:Z

    iput-boolean p9, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->h:Z

    iput-boolean p10, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->i:Z

    iput-object p11, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->j:Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;

    return-void
.end method


# virtual methods
.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectorCallback()Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->j:Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final getConversionKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->e:Ljava/util/List;

    return-object v0
.end method

.method public final getDevKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getInitializationTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->f:J

    return-wide v0
.end method

.method public final getMode()Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->d:Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    return-object v0
.end method

.method public isEventTrackingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->g:Z

    return v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->i:Z

    return v0
.end method

.method public isRevenueTrackingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;->h:Z

    return v0
.end method
