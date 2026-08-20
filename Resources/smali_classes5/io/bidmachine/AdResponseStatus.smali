.class final enum Lio/bidmachine/AdResponseStatus;
.super Ljava/lang/Enum;
.source "AdResponseStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/AdResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/AdResponseStatus;

.field public static final enum Busy:Lio/bidmachine/AdResponseStatus;

.field public static final enum Idle:Lio/bidmachine/AdResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lio/bidmachine/AdResponseStatus;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/AdResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/AdResponseStatus;->Idle:Lio/bidmachine/AdResponseStatus;

    new-instance v1, Lio/bidmachine/AdResponseStatus;

    const-string v2, "Busy"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/bidmachine/AdResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/bidmachine/AdResponseStatus;->Busy:Lio/bidmachine/AdResponseStatus;

    .line 3
    filled-new-array {v0, v1}, [Lio/bidmachine/AdResponseStatus;

    move-result-object v0

    sput-object v0, Lio/bidmachine/AdResponseStatus;->$VALUES:[Lio/bidmachine/AdResponseStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/AdResponseStatus;
    .locals 1

    .line 3
    const-class v0, Lio/bidmachine/AdResponseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/AdResponseStatus;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/AdResponseStatus;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/AdResponseStatus;->$VALUES:[Lio/bidmachine/AdResponseStatus;

    invoke-virtual {v0}, [Lio/bidmachine/AdResponseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/AdResponseStatus;

    return-object v0
.end method
