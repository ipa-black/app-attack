.class public final synthetic Lcom/google/android/gms/internal/ads/zzezn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzezp;

.field public final synthetic zzb:J

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzezm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzezp;JLcom/google/android/gms/internal/ads/zzezm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezn;->zza:Lcom/google/android/gms/internal/ads/zzezp;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzezn;->zzb:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzezn;->zzc:Lcom/google/android/gms/internal/ads/zzezm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezn;->zza:Lcom/google/android/gms/internal/ads/zzezp;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzezn;->zzb:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzezn;->zzc:Lcom/google/android/gms/internal/ads/zzezm;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzezp;->zzb(JLcom/google/android/gms/internal/ads/zzezm;)V

    return-void
.end method
