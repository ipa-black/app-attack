.class public final enum Lcom/amazon/aps/shared/analytics/APSEventSeverity;
.super Ljava/lang/Enum;
.source "APSEventSeverity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/aps/shared/analytics/APSEventSeverity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/aps/shared/analytics/APSEventSeverity;

.field public static final enum DEBUG:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

.field public static final enum ERROR:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

.field public static final enum FATAL:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

.field public static final enum INFO:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

.field public static final enum WARN:Lcom/amazon/aps/shared/analytics/APSEventSeverity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    const-string v1, "FATAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/aps/shared/analytics/APSEventSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->FATAL:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    .line 9
    new-instance v1, Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/amazon/aps/shared/analytics/APSEventSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->ERROR:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    .line 10
    new-instance v2, Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    const-string v3, "INFO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/amazon/aps/shared/analytics/APSEventSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->INFO:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    .line 11
    new-instance v3, Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    const-string v4, "WARN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/amazon/aps/shared/analytics/APSEventSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->WARN:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    .line 12
    new-instance v4, Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    const-string v5, "DEBUG"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/amazon/aps/shared/analytics/APSEventSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->DEBUG:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    .line 7
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    move-result-object v0

    sput-object v0, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->$VALUES:[Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/aps/shared/analytics/APSEventSeverity;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    return-object p0
.end method

.method public static values()[Lcom/amazon/aps/shared/analytics/APSEventSeverity;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->$VALUES:[Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    invoke-virtual {v0}, [Lcom/amazon/aps/shared/analytics/APSEventSeverity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    return-object v0
.end method
