package org.yuedong.pay;


import java.util.Map;

import com.pingplusplus.exception.APIConnectionException;
import com.pingplusplus.exception.APIException;
import com.pingplusplus.exception.AuthenticationException;
import com.pingplusplus.exception.InvalidRequestException;
import com.pingplusplus.model.ChargeCollection;
import com.pingplusplus.model.MetadataStore;
import com.pingplusplus.net.APIResource;

public class Charge extends APIResource implements MetadataStore<Charge> {
    String id;
    String object;
    Long created;
    Boolean livemode;
    Boolean paid;
    Boolean refunded;
    Object app;
    String channel;
    String order_no;
    String client_ip;
    Integer amount;
    Integer amount_settle;
    String currency;
    String subject;
    String body;
    Long time_paid;
    Long time_expire;
    Long time_settle;
    String transaction_no;
    ChargeRefundCollection refunds;
    Integer amount_refunded;
    String failure_code;
    String failure_msg;
    Map<String, String> metadata;
    Map<String, Object> credential;
    Map<String, String> extra;
    String description;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Long getCreated() {
        return created;
    }

    public void setCreated(Long created) {
        this.created = created;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public Boolean getLivemode() {
        return livemode;
    }

    public void setLivemode(Boolean livemode) {
        this.livemode = livemode;
    }

    public Boolean getPaid() {
        return paid;
    }

    public void setPaid(Boolean paid) {
        this.paid = paid;
    }

    public Boolean getRefunded() {
        return refunded;
    }

    public void setRefunded(Boolean refunded) {
        this.refunded = refunded;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }



    public String getObject() {
        return object;
    }

    public void setObject(String object) {
        this.object = object;
    }

    public ChargeRefundCollection getRefunds() {
        // API versions 2014-05-19 and earlier render charge refunds as an array
        // instead of an object, meaning there is no sublist URL.
        if (refunds.getURL() == null) {
            refunds.setURL(String.format("/v1/charges/%s/refunds", getId()));
        }
        return refunds;
    }

    public Map<String, String> getMetadata() {
        return metadata;
    }

    public void setMetadata(Map<String, String> metadata) {
        this.metadata = metadata;
    }

    public String getChannel() {
        return channel;
    }

    public void setChannel(String channel) {
        this.channel = channel;
    }

    public Object getApp() {
        return app;
    }

    public void setApp(Object app) {
        this.app = app;
    }

    public void setCredential(Map<String, Object> credential) {
        this.credential = credential;
    }
    
    public Map<String, Object> getCredential() {
    	return credential;
    }

    public Map<String, String> getExtra() {
        return extra;
    }

    public void setExtra(Map<String, String> extra) {
        this.extra = extra;
    }


    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }


    public String getOrder_no() {
		return order_no;
	}

	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}

	public String getClient_ip() {
		return client_ip;
	}

	public void setClient_ip(String client_ip) {
		this.client_ip = client_ip;
	}

	public Integer getAmount_settle() {
		return amount_settle;
	}

	public void setAmount_settle(Integer amount_settle) {
		this.amount_settle = amount_settle;
	}

	public Long getTime_paid() {
		return time_paid;
	}

	public void setTime_paid(Long time_paid) {
		this.time_paid = time_paid;
	}

	public Long getTime_expire() {
		return time_expire;
	}

	public void setTime_expire(Long time_expire) {
		this.time_expire = time_expire;
	}

	public Long getTime_settle() {
		return time_settle;
	}

	public void setTime_settle(Long time_settle) {
		this.time_settle = time_settle;
	}

	public String getTransaction_no() {
		return transaction_no;
	}

	public void setTransaction_no(String transaction_no) {
		this.transaction_no = transaction_no;
	}

	public Integer getAmount_refunded() {
		return amount_refunded;
	}

	public void setAmount_refunded(Integer amount_refunded) {
		this.amount_refunded = amount_refunded;
	}

	public String getFailure_code() {
		return failure_code;
	}

	public void setFailure_code(String failure_code) {
		this.failure_code = failure_code;
	}

	public String getFailure_msg() {
		return failure_msg;
	}

	public void setFailure_msg(String failure_msg) {
		this.failure_msg = failure_msg;
	}

	public void setRefunds(ChargeRefundCollection refunds) {
		this.refunds = refunds;
	}

	public static Charge create(Map<String, Object> params)
            throws AuthenticationException, InvalidRequestException,
            APIConnectionException, APIException {
        return create(params, null);
    }

    public static Charge retrieve(String id) throws AuthenticationException,
            InvalidRequestException, APIConnectionException,
            APIException {
        return retrieve(id, null, null);
    }

    public static Charge retrieve(String id, Map<String, Object> params) throws AuthenticationException,
            InvalidRequestException, APIConnectionException,
            APIException {
        return retrieve(id, params, null);
    }

    public Charge update(Map<String, Object> params)
            throws AuthenticationException, InvalidRequestException,
            APIConnectionException, APIException {
        return update(params, null);
    }

    public static ChargeCollection all(Map<String, Object> params)
            throws AuthenticationException, InvalidRequestException,
            APIConnectionException, APIException {
        return all(params, null);
    }

    public static Charge create(Map<String, Object> params, String apiKey)
            throws AuthenticationException, InvalidRequestException,
            APIConnectionException, APIException {
        return request(RequestMethod.POST, classURL(Charge.class), params,
                Charge.class, apiKey);
    }

    public static Charge retrieve(String id, Map<String, Object> params, String apiKey)
            throws AuthenticationException, InvalidRequestException,
            APIConnectionException, APIException {
        return request(RequestMethod.GET, instanceURL(Charge.class, id), params,
                Charge.class, apiKey);
    }

    public Charge update(Map<String, Object> params, String apiKey)
            throws AuthenticationException, InvalidRequestException,
            APIConnectionException, APIException {
        return request(RequestMethod.POST, instanceURL(Charge.class, id), params,
                Charge.class, apiKey);
    }

    public static ChargeCollection all(Map<String, Object> params, String apiKey)
            throws AuthenticationException, InvalidRequestException,
            APIConnectionException, APIException {
        return request(RequestMethod.GET, classURL(Charge.class), params,
                ChargeCollection.class, apiKey);
    }
}
