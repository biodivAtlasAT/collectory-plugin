<%@ page import="au.org.ala.collectory.ProviderGroup" %>
<div class="show-section  well">
  <h3><g:message code="shared.consumersList.title01" /></h3>
  <ul class="fancy">
    <g:each in="${instance.listConsumersSorted()}" var="con">
      <g:set var="pg" value="${ProviderGroup._get(con)}"/>
      <g:if test="${pg}">
        <li><a href="${con}">${pg.name} </a>
        <g:if test="${con[0..1] == 'in'}">
            (<g:message code="shared.consumersList.institution" />)
        </g:if>
        <g:if test="${con[0..1] == 'co'}">
          (<g:message code="shared.consumersList.collection" />)
        </g:if>
        </li>
      </g:if>
      <g:else><li><g:message code="shared.consumers.des03" />!</li></g:else>
    </g:each>
  </ul>
  <div style="clear:both;"></div>
</div>
