.class public Lcom/criteo/publisher/model/t$a;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/model/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-object v0, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->WARNING:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    sput-object v0, Lcom/criteo/publisher/model/t$a;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    return-void
.end method
