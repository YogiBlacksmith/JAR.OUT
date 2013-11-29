.class public Lcom/android/internal/telephony/SamsungMSMRIL;
.super Lcom/android/internal/telephony/RIL;
.source "SamsungMSMRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 36
    return-void
.end method


# virtual methods
.method protected handleNitzTimeReceived(Landroid/os/Parcel;)V
    .locals 12
    .parameter "p"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungMSMRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    .local v1, nitz:Ljava/lang/String;
    const/16 v6, 0x3f0

    invoke-virtual {p0, v6, v1}, Lcom/android/internal/telephony/SamsungMSMRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 68
    .local v3, nitzReceiveTime:J
    new-array v5, v10, [Ljava/lang/Object;

    .line 70
    .local v5, result:[Ljava/lang/Object;
    move-object v0, v1

    .line 71
    .local v0, fixedNitz:Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, nitzParts:[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_0
    aput-object v0, v5, v8

    .line 78
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    .line 80
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungMSMRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    if-eqz v6, :cond_1

    .line 82
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungMSMRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance v7, Landroid/os/AsyncResult;

    invoke-direct {v7, v11, v5, v11}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_1
    iput-object v5, p0, Lcom/android/internal/telephony/SamsungMSMRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 43
    .local v0, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 45
    .local v1, response:I
    packed-switch v1, :pswitch_data_0

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 55
    :goto_0
    return-void

    .line 47
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungMSMRIL;->handleNitzTimeReceived(Landroid/os/Parcel;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x3f0
        :pswitch_0
    .end packed-switch
.end method

.method protected responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungMSMRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 115
    .local v0, response:[I
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 119
    aget v1, v0, v3

    iput v1, p0, Lcom/android/internal/telephony/SamsungMSMRIL;->mPreferredNetworkType:I

    .line 123
    :cond_0
    aget v1, v0, v3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 124
    const-string v1, "RILJ"

    const-string v2, "Overriding network type response from GLOBAL to WCDMA preferred"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    aput v3, v0, v3

    .line 128
    :cond_1
    return-object v0
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    .line 93
    const/16 v1, 0xc

    .line 97
    .local v1, numInts:I
    new-array v2, v1, [I

    .line 98
    .local v2, response:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    const/4 v0, 0x7

    :goto_1
    if-ge v0, v1, :cond_1

    .line 103
    const/4 v3, -0x1

    aput v3, v2, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_1
    aget v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v4

    .line 108
    return-object v2
.end method
