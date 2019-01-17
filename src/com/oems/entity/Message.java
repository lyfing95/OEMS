package com.oems.entity;

import java.util.Date;

public class Message {
    private String messageId;

    private String messageTitle;

    private String messageContext;

    private Date messageTime;

    private String messageType;

    private String messageMake;

    public String getMessageId() {
        return messageId;
    }

    public void setMessageId(String messageId) {
        this.messageId = messageId == null ? null : messageId.trim();
    }

    public String getMessageTitle() {
        return messageTitle;
    }

    public void setMessageTitle(String messageTitle) {
        this.messageTitle = messageTitle == null ? null : messageTitle.trim();
    }

    public String getMessageContext() {
        return messageContext;
    }

    public void setMessageContext(String messageContext) {
        this.messageContext = messageContext == null ? null : messageContext.trim();
    }

    public Date getMessageTime() {
        return messageTime;
    }

    public void setMessageTime(Date messageTime) {
        this.messageTime = messageTime;
    }

    public String getMessageType() {
        return messageType;
    }

    public void setMessageType(String messageType) {
        this.messageType = messageType == null ? null : messageType.trim();
    }

    public String getMessageMake() {
        return messageMake;
    }

    public void setMessageMake(String messageMake) {
        this.messageMake = messageMake == null ? null : messageMake.trim();
    }
}